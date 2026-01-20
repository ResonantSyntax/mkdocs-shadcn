# Documentation Site Structure Outline

This document outlines the proposed structure for the microservices documentation site using mkdocs-shadcn. This structure follows the organizational patterns found in the mkdocs-shadcn repository and logically groups all microservices for comprehensive documentation.

## Proposed Navigation Structure

```
docs/
├── index.md                          # Homepage - Overview of the platform
├── get_started.md                    # Quick start guide
│
├── core/                              # Core Infrastructure Services
│   ├── index.md                      # Core services overview
│   ├── livekit-infra/                # LiveKit Infrastructure
│   │   ├── index.md                  # LiveKit overview
│   │   ├── architecture.md           # Architecture and design
│   │   ├── configuration.md         # Configuration guide
│   │   ├── deployment.md             # Deployment instructions
│   │   └── troubleshooting.md       # Common issues and solutions
│   │
│   ├── nginx/                        # Nginx Reverse Proxy
│   │   ├── index.md                  # Nginx overview
│   │   ├── configuration.md          # Proxy host configuration
│   │   ├── ssl-tls.md                # SSL/TLS setup (Let's Encrypt)
│   │   ├── routing.md                # Routing rules and patterns
│   │   └── troubleshooting.md       # Nginx troubleshooting
│   │
│   └── sip/                          # SIP Telephony Infrastructure
│       ├── index.md                  # SIP overview
│       ├── sip-proxy.md              # SIP Proxy service
│       ├── registration.md           # SIP registration and keepalive
│       └── integration.md            # LiveKit SIP integration
│
├── applications/                     # Business Applications
│   ├── index.md                      # Applications overview
│   │
│   ├── seeker-ui/                    # Seeker UI (Reflex Web App)
│   │   ├── index.md                  # Seeker UI overview
│   │   ├── architecture.md           # Reflex architecture
│   │   ├── setup.md                  # Setup and installation
│   │   ├── development.md            # Development guide
│   │   ├── deployment.md             # Production deployment
│   │   ├── database.md               # Database migrations (Alembic)
│   │   └── api-reference.md          # API endpoints and usage
│   │
│   ├── simplified-psychic/          # Simplified Psychic Agent
│   │   ├── index.md                  # Agent overview
│   │   ├── architecture.md           # Agent architecture and flow
│   │   ├── setup.md                  # Setup and configuration
│   │   ├── prompts/                  # Prompt system documentation
│   │   │   ├── index.md              # Prompts overview
│   │   │   ├── intent-prompts.md     # Intent classification prompts
│   │   │   ├── topic-prompts.md      # Topic handling prompts
│   │   │   ├── persona-prompts.md    # Persona and guardrails
│   │   │   └── temporal-prompts.md   # Time-based prompts
│   │   ├── connection-flow.md        # Connection and data flow
│   │   ├── datapoints.md             # Data points reference
│   │   ├── observability.md          # Logging and monitoring
│   │   └── deployment.md             # Deployment guide
│   │
│   ├── embed-psychic-agent/          # Web Embed Agent (Next.js)
│   │   ├── index.md                  # Embed agent overview
│   │   ├── setup.md                  # Setup and configuration
│   │   ├── features.md               # Features (voice, video, screen share)
│   │   ├── customization.md          # UI customization and branding
│   │   ├── embedding.md              # Embedding in websites
│   │   └── deployment.md             # Production deployment
│   │
│   ├── dispatch/                     # Dispatch Orchestrator Service
│   │   ├── index.md                  # Dispatch service overview
│   │   ├── architecture.md           # Orchestration architecture
│   │   ├── setup.md                  # Setup and configuration
│   │   ├── api-reference.md          # API endpoints
│   │   └── debugging.md              # Debug logging and troubleshooting
│   │
│   └── arcane/                       # Arcane Application Manager
│       ├── index.md                  # Arcane overview
│       ├── setup.md                  # Setup and configuration
│       ├── usage.md                  # Usage guide
│       └── integration.md            # Integration with other services
│
├── agents/                           # Agent Workers and Voice Bots
│   ├── index.md                      # Agents overview
│   ├── agent-architecture.md        # Agent architecture patterns
│   ├── development.md                # Developing new agents
│   ├── deployment.md                 # Agent deployment
│   └── monitoring.md                 # Agent monitoring and health
│
├── tools/                            # Operational Tools
│   ├── index.md                      # Tools overview
│   │
│   ├── livekit-dashboard/            # LiveKit Dashboard
│   │   ├── index.md                  # Dashboard overview
│   │   ├── features.md               # Dashboard features
│   │   ├── setup.md                  # Setup and configuration
│   │   ├── rooms.md                  # Room management
│   │   ├── egress.md                 # Egress and recordings
│   │   ├── sip-integration.md        # SIP features
│   │   └── analytics.md              # Analytics and metrics
│   │
│   ├── langfuse/                     # Langfuse Observability
│   │   ├── index.md                  # Langfuse overview
│   │   ├── setup.md                  # Setup and configuration
│   │   ├── tracing.md                # Tracing and monitoring
│   │   └── integration.md            # Integration with services
│   │
│   ├── homarr/                       # Homarr Dashboard
│   │   ├── index.md                  # Homarr overview
│   │   ├── setup.md                  # Setup and configuration
│   │   └── customization.md          # Customization guide
│   │
│   ├── homer/                        # Homer Landing Page
│   │   ├── index.md                  # Homer overview
│   │   ├── setup.md                  # Setup and configuration
│   │   └── customization.md          # Customization guide
│   │
│   ├── budibase/                     # Budibase Low-Code Platform
│   │   ├── index.md                  # Budibase overview
│   │   ├── setup.md                  # Setup and configuration
│   │   └── usage.md                  # Usage guide
│   │
│   └── cloudflared/                  # Cloudflare Tunnel
│       ├── index.md                  # Cloudflared overview
│       ├── setup.md                  # Setup and configuration
│       └── configuration.md         # Tunnel configuration
│
├── infrastructure/                   # Infrastructure and Operations
│   ├── index.md                      # Infrastructure overview
│   │
│   ├── docker/                       # Docker Environment
│   │   ├── index.md                  # Docker setup overview
│   │   ├── structure.md              # Directory structure
│   │   ├── networking.md             # Docker networks
│   │   ├── volumes.md                # Volume management
│   │   └── environment.md            # Environment variables
│   │
│   ├── data/                         # Data Management
│   │   ├── index.md                  # Data overview
│   │   ├── volumes.md                # Persistent volumes
│   │   ├── backups.md                # Backup strategies
│   │   └── retention.md              # Data retention policies
│   │
│   ├── secrets/                      # Secrets Management
│   │   ├── index.md                  # Secrets overview
│   │   ├── management.md             # Secret management practices
│   │   └── security.md               # Security best practices
│   │
│   └── monitoring/                   # Monitoring and Observability
│       ├── index.md                  # Monitoring overview
│       ├── logging.md                # Log aggregation
│       ├── metrics.md                # Metrics collection
│       └── alerts.md                 # Alerting configuration
│
├── development/                     # Development Guides
│   ├── index.md                      # Development overview
│   ├── local-setup.md                # Local development setup
│   ├── contributing.md               # Contribution guidelines
│   ├── code-style.md                 # Code style and standards
│   ├── testing.md                    # Testing strategies
│   └── debugging.md                  # Debugging guides
│
├── deployment/                       # Deployment Guides
│   ├── index.md                      # Deployment overview
│   ├── production.md                 # Production deployment
│   ├── docker-compose.md             # Docker Compose deployment
│   ├── scaling.md                    # Scaling strategies
│   ├── updates.md                    # Updating services
│   └── disaster-recovery.md          # Disaster recovery
│
└── reference/                        # Reference Documentation
    ├── index.md                      # Reference overview
    ├── api-reference.md              # API endpoints reference
    ├── environment-variables.md      # Environment variables reference
    ├── docker-compose-reference.md   # Docker Compose reference
    ├── troubleshooting.md            # Troubleshooting guide
    └── glossary.md                  # Glossary of terms
```

## Documentation Sections Breakdown

### 1. Core Infrastructure (`core/`)
**Purpose**: Critical infrastructure services that must stay stable

**Services to Document**:
- **LiveKit Infrastructure** (`Livekit_Infra/`): WebRTC infrastructure, room management, real-time communication
- **Nginx** (`Nginx/`): Reverse proxy, SSL/TLS termination, routing
- **SIP Infrastructure** (`sip_proxy/`): SIP proxy, registration keeper, telephony integration

**Key Topics**:
- Architecture and design decisions
- Configuration and environment setup
- Deployment procedures
- Network configuration
- Security considerations
- Troubleshooting common issues

---

### 2. Applications (`applications/`)
**Purpose**: Business applications and customer-facing services

**Services to Document**:
- **Seeker UI** (`seeker_ui/`): Reflex-based web application
  - Reflex architecture
  - Database migrations (Alembic)
  - API endpoints
  - Frontend/backend separation
  
- **Simplified Psychic** (`simplified_psychic/`): Voice AI agent
  - Agent architecture and flow
  - Prompt system (intents, topics, persona, temporal)
  - Connection flow and data points
  - Observability and tracing
  
- **Embed Psychic Agent** (`embed_psychic_agent/`): Next.js web embed
  - Embedding in websites
  - Voice/video/screen share features
  - UI customization
  - Production deployment
  
- **Dispatch** (`dispatch/`): Orchestration service
  - API endpoints
  - Debug logging
  - Integration patterns
  
- **Arcane** (`apps/arcane/`): Application manager
  - Docker management
  - Project organization

**Key Topics**:
- Service architecture
- Setup and installation
- Configuration
- Development workflows
- API documentation
- Deployment procedures

---

### 3. Agents (`agents/`)
**Purpose**: Agent workers and voice bots

**Key Topics**:
- Agent architecture patterns
- Developing new agents
- Agent deployment
- Monitoring and health checks
- Integration with LiveKit

---

### 4. Tools (`tools/`)
**Purpose**: Operational tooling and dashboards

**Services to Document**:
- **LiveKit Dashboard** (`livekit-dashboard/`): Management dashboard
  - Room management
  - Egress/recordings
  - SIP integration
  - Analytics
  
- **Langfuse** (`Langfuse/`): Observability platform
  - Tracing setup
  - Integration with agents
  
- **Homarr** (`Homarr/`): Dashboard
- **Homer** (`homer/`): Landing page
- **Budibase** (`Budibase/`): Low-code platform
- **Cloudflared** (`cloudflared/`): Cloudflare tunnel

**Key Topics**:
- Setup and configuration
- Usage guides
- Integration with other services
- Customization options

---

### 5. Infrastructure (`infrastructure/`)
**Purpose**: Infrastructure management and operations

**Key Topics**:
- Docker environment structure
- Network configuration
- Volume management
- Data persistence and backups
- Secrets management
- Monitoring and observability

---

### 6. Development (`development/`)
**Purpose**: Developer guides and workflows

**Key Topics**:
- Local development setup
- Contribution guidelines
- Code style and standards
- Testing strategies
- Debugging techniques

---

### 7. Deployment (`deployment/`)
**Purpose**: Deployment and operations guides

**Key Topics**:
- Production deployment procedures
- Docker Compose deployment
- Scaling strategies
- Service updates
- Disaster recovery

---

### 8. Reference (`reference/`)
**Purpose**: Quick reference documentation

**Key Topics**:
- API endpoint reference
- Environment variables
- Docker Compose configurations
- Troubleshooting guides
- Glossary of terms

---

## Documentation Standards

### Page Structure
Each service documentation page should follow this structure:

1. **Overview**: What the service does and its purpose
2. **Architecture**: High-level architecture and design
3. **Setup**: Installation and initial configuration
4. **Configuration**: Detailed configuration options
5. **Usage**: How to use the service
6. **API Reference**: API endpoints (if applicable)
7. **Troubleshooting**: Common issues and solutions
8. **Related Services**: Links to related documentation

### Front Matter Template
```yaml
---
title: Service Name
summary: Brief description of the service
sidebar_title: Service Name
order: [number]
---
```

### Code Examples
- Include docker-compose snippets
- Show environment variable examples
- Provide configuration file examples
- Include API request/response examples where applicable

### Cross-References
- Link to related services
- Reference infrastructure setup
- Link to deployment guides
- Connect to troubleshooting sections

---

## Implementation Notes

### mkdocs.yml Structure
The navigation in `mkdocs.yml` should mirror this outline structure:

```yaml
nav:
  - Home: index.md
  - Get Started: get_started.md
  - Core Infrastructure:
    - Overview: core/index.md
    - LiveKit Infrastructure: core/livekit-infra/index.md
    - Nginx: core/nginx/index.md
    - SIP: core/sip/index.md
  - Applications:
    - Overview: applications/index.md
    - Seeker UI: applications/seeker-ui/index.md
    - Simplified Psychic: applications/simplified-psychic/index.md
    # ... etc
```

### File Organization
- Each service gets its own directory under the appropriate section
- Use `index.md` for service overview pages
- Group related topics in subdirectories (e.g., `prompts/` under `simplified-psychic/`)
- Keep file names lowercase with hyphens

### Assets
- Place service-specific images in `docs/assets/[service-name]/`
- Use consistent naming for diagrams and screenshots
- Include architecture diagrams where helpful

---

## Priority Order for Documentation Creation

### Phase 1: Core Infrastructure (Critical)
1. LiveKit Infrastructure
2. Nginx
3. SIP Infrastructure

### Phase 2: Primary Applications (High Priority)
1. Simplified Psychic Agent
2. Seeker UI
3. Dispatch Service

### Phase 3: Supporting Services (Medium Priority)
1. Embed Psychic Agent
2. LiveKit Dashboard
3. Langfuse

### Phase 4: Tools and Utilities (Lower Priority)
1. Homarr
2. Homer
3. Budibase
4. Cloudflared

### Phase 5: Infrastructure and Operations
1. Docker environment
2. Data management
3. Secrets management
4. Monitoring

### Phase 6: Developer and Reference Docs
1. Development guides
2. Deployment guides
3. API reference
4. Troubleshooting guides

---

## Notes

- This outline follows the organizational patterns found in `mkdocs-shadcn/pages/docs/`
- Each service should be documented independently but with clear cross-references
- Focus on practical, actionable documentation
- Include code examples and configuration snippets
- Maintain consistency in structure across all service documentation
- Update this outline as new services are added or existing ones are modified
