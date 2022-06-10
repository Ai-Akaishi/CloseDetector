#> close_detector:check_inventory/check/2
# 不一致チェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage close_detector: check.last set from storage close_detector: diff.last[0]
execute store result storage close_detector: check.last byte 1 run data modify storage close_detector: check.last set from storage close_detector: diff.now[1]

data modify storage close_detector: check.now set from storage close_detector: diff.now[0]
execute store result storage close_detector: check.now byte 1 run data modify storage close_detector: check.now set from storage close_detector: diff.last[1]

execute if data storage close_detector: check{last:false,now:false} run tag @s add CloseDetectorIgnoreNext
execute if data storage close_detector: check{last:false,now:false} run say 入れ換え
