#> close_detector:check_inventory/save/check
# コンテナGUIを閉じた時の処理
# Process on closed Container GUI.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage close_detector: _ set from storage close_detector: inventory.last[-1]
execute store result storage close_detector: _ byte 1 run data modify storage close_detector: _ set from storage close_detector: inventory.now[-1]

### スキップ数をカウントアップ
execute if data storage close_detector: {_:true} store result storage close_detector: skip int -1 run data get storage close_detector: skip -1.0000000001
