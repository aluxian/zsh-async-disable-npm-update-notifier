function _npm_update_notifier_disable() {
  command -v npm >/dev/null && { grep -q 'update-notifier=false' ~/.npmrc || npm config set update-notifier false; }
}

async_start_worker _npm_update_notifier_disable
async_job _npm_update_notifier_disable _npm_update_notifier_disable
