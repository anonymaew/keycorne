#!/bin/sh

west build -d /build/left -b nice_nano_v2 -- -DSHIELD="corne_left nice_view_adapter nice_view" -DZMK_CONFIG="/zmk/app/config"
west build -d /build/right -b nice_nano_v2 -- -DSHIELD="corne_right nice_view_adapter nice_view" -DZMK_CONFIG="/zmk/app/config"

cp /build/left/zephyr/zmk.uf2 /output/left.uf2
cp /build/right/zephyr/zmk.uf2 /output/right.uf2
