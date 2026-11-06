# krenel.net

One-screen landing page for the krenel-net GitHub org, served by GitHub Pages at https://krenel.net. Pushing to `main` deploys it.

- `index.html`: the page. Page-only sizes are CSS variables at the top of its `<style>`.
- `fonts/`: Saira, self-hosted: Google Fonts' latin woff2 (variable weight, all the page needs) and its OFL licence, which must ship with it.
- `grid/`: the Grid design system, copied from a Claude artifact. Read `grid/AGENTS.md` before changing or refreshing it.
- `CNAME` sets the custom domain; `.nojekyll` makes Pages serve the files as they are.

## Commands

- Preview: `python3 -m http.server 8000`, then open http://localhost:8000 (from Claude Code, read `.memory/local-preview.md` first)
- Check, must print nothing: `./check.sh`

## Done means

`./check.sh` prints nothing, and in a browser at desktop and about 375px wide: Saira loaded, no sideways scroll. The GitHub icon is dead centre and reaches the org. The name is a barely visible ghost above it that lights up under the pointer; z switches to a light that wanders over it by itself, near the name about 70% of the time, and with reduced motion rests on the name's centre. On a phone the whole name glows and slowly pulses (steady with reduced motion). The blooms, including an amber one, swing away from the pointer or the wandering light, and stay put on a phone. The name and the GitHub button each have a visible dark-gloss reflection below the horizon on a black glossy floor that also reflects the background glows, and the name's reflection mirrors the lit letters, in Safari too (check a phone in the iOS Simulator: `.memory/local-preview.md`). Dependencies opens, and closes with Esc, a click outside, or Close.

## Rules

- The name is always KRENEL-NET, krenel-net or krenel.net, never the first word alone.
- Dark theme only.
- Gloss and reflections are key to the design; don't remove or flatten them without asking.
- The Dependencies panel in `index.html` tells visitors which third parties see their requests (GitHub Pages). Add, remove or self-host a third-party resource, and update that panel in the same change.
- The DNS records at Cloudflare stay DNS-only (grey cloud) so GitHub can issue and renew the HTTPS certificate.
