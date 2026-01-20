---
title: Observability
summary: Logging and monitoring
sidebar_title: Observability
order: 6
---

# Observability

## Overview

[Overview content placeholder]

## Logging

[Logging content placeholder]

## Monitoring

[Monitoring content placeholder]

## Tracing

[Tracing content placeholder]

## Related Services

- [Simplified Psychic](index.md)
- [Data Points](datapoints.md)
- [Deployment](deployment.md)
- [Langfuse](../../tools/langfuse/index.md)

## Future Enhancements

### LLM Metrics Collection

Implement LLM metrics collection to capture token counts, latency, and performance metrics for each agent response. This will provide visibility into prompt/response token counts and time-to-first-token during live calls.

**Reference:** [LiveKit LLM Metrics Recipe](https://docs.livekit.io/recipes/metrics_llm/)

### Data Hooks and Observability

Implement data hooks to collect session recordings, transcripts, metrics, and other session data. This includes subscribing to metrics events, aggregating usage data, and integrating with OpenTelemetry for comprehensive observability.

**Reference:** [LiveKit Data Hooks Documentation](https://docs.livekit.io/deploy/observability/data/)
