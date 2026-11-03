# krenel.net

One-screen landing page for the krenel-net GitHub org, served by GitHub Pages at https://krenel.net. Pushing to `main` deploys it.

- `index.html`: the page. Page-only sizes are CSS variables at the top of its `<style>`.
- `grid/`: the Grid design system, from the Claude artifact https://claude.ai/artifact/3NFt5Bva1ZnyUnoKLNeBjF (version 1792913383-a240). `bundle.css` is copied unchanged; `tokens.css` is its dark theme. Change Grid in the artifact and copy again; don't edit these here.
- `CNAME` sets the custom domain; `.nojekyll` makes Pages serve the files as they are.

## Commands

- Preview: `python3 -m http.server 8000`, then open http://localhost:8000
- Name check, must print nothing: `grep -rnoE '[Kk][Rr][Ee][Nn][Ee][Ll]([-.][Nn][Ee][Tt])?' --exclude-dir=.git . | grep -vE ':(KRENEL-NET|krenel-net|krenel.net)$'`

## Rules

- The name is always KRENEL-NET, krenel-net or krenel.net, never the first word alone.
- Dark theme only.
- The Dependencies panel in `index.html` tells visitors which third parties see their requests (Google Fonts, GitHub Pages). Add, remove or self-host a third-party resource, and update that panel in the same change.
