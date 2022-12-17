#!/bin/sh

USER="AlonsoErnesto"
# You can get your Personal access tokens from here : https://github.com/settings/tokens #
TOKEN="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"

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

echo "%{T3} $notifications"

