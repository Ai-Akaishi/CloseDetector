#> close_detector:close/tear_down
# 検知用アイテムを消す
# Remove the detective item in the inventory.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### パフォーマンス向上のため先にインベントリを保存しておく
data modify storage close_detector: new_inventory set from entity @s Inventory

### 仮アイテムなら削除
execute if data storage close_detector: new_inventory[{Slot:103b}].tag{CloseDetectorItem:true} run item replace entity @s armor.head with minecraft:air

### 仮アイテムでなければ、頭に返却するアイテムを設定
execute unless data storage close_detector: new_inventory[{Slot:103b}].tag{CloseDetectorItem:true} run data modify storage player_item_tuner: condition set value {if:{Slot:103b}}
execute unless data storage close_detector: new_inventory[{Slot:103b}].tag{CloseDetectorItem:true} run data modify storage player_item_tuner: result.set set from storage close_detector: new_inventory[{Slot:103b}]
execute unless data storage close_detector: new_inventory[{Slot:103b}].tag{CloseDetectorItem:true} run data remove storage player_item_tuner: result.set.tag.CloseDetector

### 仮アイテムでなければ、頭のアイテムを更新
execute unless data storage close_detector: new_inventory[{Slot:103b}].tag{CloseDetectorItem:true} run function #player_item_tuner:modify/inventory
