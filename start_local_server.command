#!/bin/zsh
cd "$(dirname "$0")" || exit 1
PORT=8765
echo "Opening Shadow Game at http://127.0.0.1:${PORT}/index.html"
echo "Keep this window open while playing. Press Control+C to stop the server."
open "http://127.0.0.1:${PORT}/index.html" >/dev/null 2>&1
ruby -run -e httpd . -p "${PORT}"
