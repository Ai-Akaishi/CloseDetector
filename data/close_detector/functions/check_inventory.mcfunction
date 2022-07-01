#> close_detector:check_inventory
# コンテナGUIを閉じた時の処理
# Process on closed Container GUI.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

# 個別ストレージ呼び出し
function #oh_my_dat:please

### パフォーマンス向上のため先にインベントリを保存しておく
data modify storage close_detector: new_inventory set from entity @s Inventory

### 変化がないか、占有数に差がないかをチェック
## last
data modify storage close_detector: _ set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CloseDetector.Inventory
## now
execute store result storage close_detector: changed byte 1 run data modify storage close_detector: _ set from storage close_detector: new_inventory
## check
execute store result storage close_detector: closed byte 1 unless data storage close_detector: {changed:true}

### スキップする回数をカウントダウン
execute store result storage close_detector: skip int 0.999999999 run data get storage close_detector: skip
### まだスキップ回数が残っていたら閉じたことを無視します。
execute unless data storage close_detector: {skip:0} run data modify storage close_detector: closed set value false

tag @s remove CloseDetectorIgnoreNext
### 変化があったら連続して無視しないといけない可能性があるので確認
execute if data storage close_detector: {changed:true,skip:0} run function close_detector:check_inventory/

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CloseDetector.Inventory set from storage close_detector: new_inventory
