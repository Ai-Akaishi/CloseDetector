#> close_detector:check_inventory/save/last
# コンテナGUIを閉じた時の処理
# Process on closed Container GUI.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### スキップ数をカウントアップ
execute store result storage close_detector: skip int -1 run data get storage close_detector: skip -1.0000000001
