#> close_detector:close/tear_down
# 検知用アイテムを消す
# Give a detective item to the inventory.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 頭に返却するアイテムを設定
data modify storage player_item_tuner: condition set value {if:{Slot:103b}}
data modify storage player_item_tuner: result.set set from entity @s Inventory[{Slot:103b}]
data remove storage player_item_tuner: result.set.tag.CloseDetector
### 仮アイテムなら削除
data modify storage player_item_tuner: result.set{tag:{CloseDetectorItem:true}} set value {id:"minecraft:air"}

### 頭のアイテムを更新
function #player_item_tuner:modify/inventory

### 閉じた時の処理を呼び出し
function #close_detector:on_closed

# openトリガー有効化
advancement revoke @s only close_detector:open
