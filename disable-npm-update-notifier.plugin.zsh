function _npm_update_notifier_disable() {
  command -v npm >/dev/null && { grep -q 'update-notifier=false' ~/.npmrc || npm config set update-notifier false; }
}

_npm_update_notifier_disable &!

