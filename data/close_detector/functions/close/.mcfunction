#> close_detector:close/
# コンテナGUIを閉じた時の処理
# Process on closed Container GUI.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### インベントリ変化チェック
function close_detector:check_inventory

### 閉じていたら閉じ処理実行
execute if data storage close_detector: {closed:true} unless data storage close_detector: open run function close_detector:close/on_closed

# トリガー再有効化
advancement revoke @s only close_detector:close

# ロック検知用
data remove storage close_detector: open
