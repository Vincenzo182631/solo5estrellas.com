# Images (20/100)

## What works

- Nothing confirmed

## Findings

### No hotel images in server HTML [High]

All 300 sampled hotel pages contain exactly 1 <img> (the logo); 323 of 399 pages have one or none. Galleries are probably JavaScript-loaded. Image alt text and lazy loading could not be assessed.

**Fix:** Server-render the hero image with alt text, dimensions and fetchpriority; lazy-load the rest. Confirm with GSC URL Inspection.
