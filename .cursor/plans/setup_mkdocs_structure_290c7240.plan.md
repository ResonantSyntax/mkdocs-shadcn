---
name: Setup mkdocs structure
overview: "Create the complete documentation structure from docs-outline.md: set up all directories, create template pages with section placeholders, update mkdocs.yml navigation, move existing example pages to examples/, and update site configuration."
todos:
  - id: update-mkdocs-yml
    content: Update mkdocs.yml with new navigation structure and site metadata
    status: completed
  - id: reorganize-existing
    content: Move existing example pages (extensions/, plugins/, pages.md) to docs/examples/
    status: completed
  - id: create-directories
    content: Create all directory structures for core, applications, agents, tools, infrastructure, development, deployment, reference
    status: completed
  - id: create-core-pages
    content: Create all Core Infrastructure template pages (LiveKit, Nginx, SIP)
    status: completed
    dependencies:
      - create-directories
  - id: create-applications-pages
    content: Create all Applications template pages (Seeker UI, Simplified Psychic, Embed Agent, Dispatch, Arcane)
    status: completed
    dependencies:
      - create-directories
  - id: create-agents-pages
    content: Create Agents template pages
    status: completed
    dependencies:
      - create-directories
  - id: create-tools-pages
    content: Create Tools template pages (LiveKit Dashboard, Langfuse, Homarr, Homer, Budibase, Cloudflared)
    status: completed
    dependencies:
      - create-directories
  - id: create-infrastructure-pages
    content: Create Infrastructure template pages (Docker, Data, Secrets, Monitoring)
    status: completed
    dependencies:
      - create-directories
  - id: create-development-pages
    content: Create Development guide template pages
    status: completed
    dependencies:
      - create-directories
  - id: create-deployment-pages
    content: Create Deployment guide template pages
    status: completed
    dependencies:
      - create-directories
  - id: create-reference-pages
    content: Create Reference documentation template pages
    status: completed
    dependencies:
      - create-directories
  - id: update-root-pages
    content: Update index.md and get_started.md with new content structure
    status: completed
---

# Setup mkdocs Documentation Structure

## Overview

Create the complete documentation structure based on `docs-outline.md`, including all directories, template pages with section placeholders, navigation configuration, and reorganization of existing content.

## Implementation Steps

### 1. Update mkdocs.yml Configuration

- Update `site_name`, `site_url`, `site_description`, and `site_author` with placeholder values
- Uncomment and configure the `nav` section to match the outline structure
- Organize navigation to mirror the outline: Home, Get Started, Core Infrastructure, Applications, Agents, Tools, Infrastructure, Development, Deployment, Reference

### 2. Reorganize Existing Content

- Move existing example pages (`extensions/`, `plugins/`, `pages.md`) to `docs/examples/` directory
- Keep `index.md` and `get_started.md` in root (will update content)

### 3. Create Directory Structure

Create all directories from the outline:

- `docs/core/` (with subdirs: `livekit-infra/`, `nginx/`, `sip/`)
- `docs/applications/` (with subdirs: `seeker-ui/`, `simplified-psychic/`, `simplified-psychic/prompts/`, `embed-psychic-agent/`, `dispatch/`, `arcane/`)
- `docs/agents/`
- `docs/tools/` (with subdirs: `livekit-dashboard/`, `langfuse/`, `homarr/`, `homer/`, `budibase/`, `cloudflared/`)
- `docs/infrastructure/` (with subdirs: `docker/`, `data/`, `secrets/`, `monitoring/`)
- `docs/development/`
- `docs/deployment/`
- `docs/reference/`
- `docs/examples/` (for moved content)

### 4. Create Template Pages

For each page in the outline, create a markdown file with:

- Front matter following the template (title, summary, sidebar_title, order)
- Section placeholders: Overview, Architecture, Setup, Configuration, Usage, API Reference (if applicable), Troubleshooting, Related Services
- Brief placeholder text for each section

### 5. Update Root Pages

- Update `docs/index.md` with platform overview content
- Update `docs/get_started.md` with quick start guide structure

## Files to Create/Modify

### Configuration

- `pages/mkdocs.yml` - Update navigation and site metadata

### Root Pages

- `pages/docs/index.md` - Update with platform overview
- `pages/docs/get_started.md` - Update with quick start structure

### Core Infrastructure (15 pages)

- `pages/docs/core/index.md`
- `pages/docs/core/livekit-infra/index.md`, `architecture.md`, `configuration.md`, `deployment.md`, `troubleshooting.md`
- `pages/docs/core/nginx/index.md`, `configuration.md`, `ssl-tls.md`, `routing.md`, `troubleshooting.md`
- `pages/docs/core/sip/index.md`, `sip-proxy.md`, `registration.md`, `integration.md`

### Applications (25+ pages)

- `pages/docs/applications/index.md`
- `pages/docs/applications/seeker-ui/` (6 pages)
- `pages/docs/applications/simplified-psychic/` (8 pages including prompts subdirectory)
- `pages/docs/applications/embed-psychic-agent/` (6 pages)
- `pages/docs/applications/dispatch/` (5 pages)
- `pages/docs/applications/arcane/` (4 pages)

### Agents (5 pages)

- `pages/docs/agents/index.md`, `agent-architecture.md`, `development.md`, `deployment.md`, `monitoring.md`

### Tools (20+ pages)

- `pages/docs/tools/index.md`
- Subdirectories for each tool with 2-7 pages each

### Infrastructure (15+ pages)

- `pages/docs/infrastructure/index.md`
- Subdirectories for docker, data, secrets, monitoring

### Development (6 pages)

- `pages/docs/development/index.md`, `local-setup.md`, `contributing.md`, `code-style.md`, `testing.md`, `debugging.md`

### Deployment (6 pages)

- `pages/docs/deployment/index.md`, `production.md`, `docker-compose.md`, `scaling.md`, `updates.md`, `disaster-recovery.md`

### Reference (6 pages)

- `pages/docs/reference/index.md`, `api-reference.md`, `environment-variables.md`, `docker-compose-reference.md`, `troubleshooting.md`, `glossary.md`

### Examples (moved content)

- Move existing `extensions/`, `plugins/`, `pages.md` to `docs/examples/`

## Template Structure

Each page will follow this template:

```yaml
---
title: Page Title
summary: Brief description
sidebar_title: Short Title
order: [number]
---
# Page Title

## Overview
[Overview content placeholder]

## Architecture
[Architecture content placeholder]

## Setup
[Setup content placeholder]

## Configuration
[Configuration content placeholder]

## Usage
[Usage content placeholder]

## API Reference
[API reference placeholder - if applicable]

## Troubleshooting
[Troubleshooting placeholder]

## Related Services
[Links to related documentation]
```

## Notes

- All file names use lowercase with hyphens (kebab-case)
- Each service directory has an `index.md` for overview
- Order numbers will be assigned sequentially within each section
- Front matter will be consistent across all pages
- Placeholder content provides structure but needs to be filled with actual documentation