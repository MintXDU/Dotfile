#!/bin/bash

CLASH_URL="https://v2yun.pro/link/JVNaJBwZ5Ql5xwi5?clash=1"
cp ~/.config/clash/config.yaml ~/.config/clash/config.yaml.back
curl -L -o ~/.config/clash/config.yaml "${CLASH_URL}"

