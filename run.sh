#!/usr/bin/with-contenv bashio

bashio::log.info "Starting npm server..."

export HA_BASE_URL="$(bashio::config 'HA_BASE_URL')"
export HA_ACCESS_TOKEN="$(bashio::config 'HA_ACCESS_TOKEN')"
export LANGUAGE=$(bashio::config 'LANGUAGE')
export CRON_JOB=$(bashio::config 'CRON_JOB')
export RENDERING_TIMEOUT=$(bashio::config 'RENDERING_TIMEOUT')
export RENDERING_DELAY=$(bashio::config 'RENDERING_DELAY')
export HA_SCREENSHOT_URL=$(bashio::config 'HA_SCREENSHOT_URL')
export RENDERING_SCREEN_HEIGHT=$(bashio::config 'RENDERING_SCREEN_HEIGHT')
export RENDERING_SCREEN_WIDTH=$(bashio::config 'RENDERING_SCREEN_WIDTH')
export ROTATION=$(bashio::config 'ROTATION')
export SCALING=$(bashio::config 'SCALING')
export GRAYSCALE_DEPTH=$(bashio::config 'GRAYSCALE_DEPTH')
export COLOR_MODE=$(bashio::config 'COLOR_MODE')
export HA_SCREENSHOT_URL_2=$(bashio::config 'HA_SCREENSHOT_URL_2')
export RENDERING_SCREEN_HEIGHT_2=$(bashio::config 'RENDERING_SCREEN_HEIGHT_2')
export RENDERING_SCREEN_WIDTH_2=$(bashio::config 'RENDERING_SCREEN_WIDTH_2')
export ROTATION_2=$(bashio::config 'ROTATION_2')
export SCALING_2=$(bashio::config 'SCALING_2')
export GRAYSCALE_DEPTH_2=$(bashio::config 'GRAYSCALE_DEPTH_2')
export COLOR_MODE_2=$(bashio::config 'COLOR_MODE_2')
export HA_BATTERY_WEBHOOK=$(bashio::config 'HA_BATTERY_WEBHOOK')

bashio::log.info "Using base_url: ${HA_BASE_URL}"

cd /app
exec /usr/bin/npm start
