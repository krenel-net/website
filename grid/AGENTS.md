# grid/

The Grid design system, copied from the Claude artifact https://claude.ai/artifact/3NFt5Bva1ZnyUnoKLNeBjF. Don't edit `bundle.css` or `tokens.css` here: change Grid in the artifact, then refresh.

- `bundle.css`: the artifact's `project/components/bundle.css`, copied verbatim.
- `tokens.css`: generated from the artifact's `project/tokens.json` by `tokens_to_css.py`. Its header records the artifact version both files came from.

## Refresh

Needs Claude Code with the claude-artifacts connector; Codex can't reach artifacts.

1. `list_files` on the artifact: note the version and the sha256 of both files above.
2. `read_file` with `path`, one file at a time. This artifact refuses `paths` and binary files.
3. Copy `bundle.css` here verbatim. Save `tokens.json` outside the repo. Both sha256s must match step 1.
4. `python3 -I grid/tokens_to_css.py <tokens.json> <version> > grid/tokens.css`
5. Run `./check.sh`. Then check whether `index.html` can use `.gd-opal` again (see the comment on its `body` rule).
