#> close_detector:close/
# コンテナGUIを閉じた時の処理
# Process on closed Container GUI.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### インベントリ変化チェック
function close_detector:check_inventory

# tellraw @s {"nbt":"closed","storage":"close_detector:"}

### 閉じていたら閉じ処理実行
execute if data storage close_detector: {closed:true} run function close_detector:close/tear_down

# トリガー再有効化
advancement revoke @s only close_detector:close
