# Performance (CWV) (not scored)

## What works

- Nothing confirmed

## Findings

### Core Web Vitals not measured [Info]

PageSpeed Insights API quota was exhausted (HTTP 429) and the audit tool's own fetchers were blocked by this sandbox's proxy guard. Server timing and page weight were measured instead: HTML 14-180 KB; city pages 2.5 s TTFB.

**Fix:** Pull CrUX and Lighthouse from Search Console or a local run.
