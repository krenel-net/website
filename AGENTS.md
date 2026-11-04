# krenel.net

One-screen landing page for the krenel-net GitHub org, served by GitHub Pages at https://krenel.net. Pushing to `main` deploys it once GitHub Pages is set up (state: `.memory/deploy-status.md`).

- `index.html`: the page. Page-only sizes are CSS variables at the top of its `<style>`.
- `grid/`: the Grid design system, copied from a Claude artifact. Read `grid/AGENTS.md` before changing or refreshing it.
- `CNAME` sets the custom domain; `.nojekyll` makes Pages serve the files as they are.

## Commands

- Preview: `python3 -m http.server 8000`, then open http://localhost:8000 (from Claude Code, read `.memory/local-preview.md` first)
- Check, must print nothing: `./check.sh`

## Done means

`./check.sh` prints nothing, and in a browser at desktop and about 375px wide: Saira loaded, name centered, faint, brightens under the pointer; blooms drift away, no sideways scroll, reflection faint. The GitHub icon reaches the org. Dependencies opens, and closes with Esc, a click outside, or Close.

## Rules

- The name is always KRENEL-NET, krenel-net or krenel.net, never the first word alone.
- Dark theme only.
- The Dependencies panel in `index.html` tells visitors which third parties see their requests (Google Fonts, GitHub Pages). Add, remove or self-host a third-party resource, and update that panel in the same change.
- The DNS records at Cloudflare stay DNS-only (grey cloud) so GitHub can issue and renew the HTTPS certificate.
