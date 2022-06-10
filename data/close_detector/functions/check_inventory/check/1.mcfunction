#> close_detector:check_inventory/check/1
# 不一致チェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage close_detector: _ set from storage close_detector: diff.last[0]
execute store result storage close_detector: _ byte 1 run data modify storage close_detector: _ set from storage close_detector: diff.now[0]

execute if data storage close_detector: {_:false} run tag @s add CloseDetectorIgnoreNext
execute if data storage close_detector: {_:false} run say 即時移動
