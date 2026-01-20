# Multi-stage build for mkdocs-shadcn
FROM python:3.11-slim as base

# Install Node.js and npm
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js (LTS version)
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Install uv for Python dependency management
RUN pip install --no-cache-dir uv

WORKDIR /app

# Copy dependency files and README (needed for package build)
COPY pyproject.toml uv.lock* README.md ./
COPY package.json package-lock.json* ./

# Install Python dependencies
RUN uv sync --all-extras --frozen || uv sync --all-extras

# Install Node.js dependencies
RUN npm ci || npm install

# Copy source files
COPY . .

# Build Tailwind CSS
RUN npm run build

# Install the package in development mode
RUN uv pip install -e .

WORKDIR /app/pages

# Expose MkDocs default port
EXPOSE 8000

# Default command: serve MkDocs with theme watching
CMD ["uv", "run", "mkdocs", "serve", "--dev-addr", "0.0.0.0:8000", "--watch-theme", "-w", ".."]
