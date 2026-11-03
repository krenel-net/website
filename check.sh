#!/usr/bin/env bash
# Repo checks. Prints nothing and exits 0 when clean; otherwise prints each problem and exits 1.
cd "$(dirname "$0")" || exit 1
status=0

# Name: every spelling found must be KRENEL-NET, krenel-net or krenel.net, never the first word alone.
# The dot in the filter stays unescaped. Escaped, this file would hold the first word followed by a
# backslash, which the search below reports as the bare word. It is safe because the search only ever
# captures a - or . in that spot. -I skips binary files such as images.
bad_names=$(grep -rnoIE '[Kk][Rr][Ee][Nn][Ee][Ll]([-.][Nn][Ee][Tt])?' --exclude-dir=.git . |
  grep -vE ':(KRENEL-NET|krenel-net|krenel.net)$')
if [ -n "$bad_names" ]; then
  echo "$bad_names" | sed 's/^/wrong name: /'
  status=1
fi

# CSS variables: every var(--x) used by the page or Grid is defined in grid/tokens.css or index.html.
defined=" $(grep -ohE -e '--[A-Za-z0-9_-]+[[:space:]]*:' grid/tokens.css index.html | sed 's/[[:space:]]*:$//' | tr '\n' ' ') "
while IFS= read -r use; do
  name=${use##*var(}
  case $defined in
    *" $name "*) ;;
    *) echo "undefined variable: $use"; status=1 ;;
  esac
done < <(grep -noE 'var\(--[A-Za-z0-9_-]+' index.html grid/bundle.css grid/tokens.css)

exit $status
