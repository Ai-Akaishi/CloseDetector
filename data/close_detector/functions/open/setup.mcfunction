#> close_detector:open/setup
# インベントリに検知用アイテムを渡す
# Give a detective item to the inventory.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### パフォーマンス向上のため先にインベントリを保存しておく
data modify storage close_detector: new_inventory set from entity @s Inventory

### 頭装備を持っていなかったら、頭装備にボタンでもつけちゃお！！
execute unless data storage close_detector: new_inventory[{Slot:103b}] run item replace entity @s armor.head with minecraft:stone_button{CloseDetectorItem:true,display:{Name:'"CloseDetectorItem"'},AttributeModifiers:[],Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
### 変化検知のため頭装備にタグをつける
data modify storage player_item_tuner: condition set value {if:{Slot:103b}}
data modify storage player_item_tuner: result set value {merge:{tag:{CloseDetector:true}}}
execute store result storage player_item_tuner: result.merge.tag.CloseDetector byte 1 unless data storage close_detector: new_inventory[{Slot:103b}].tag{CloseDetector:true}
### アイテム反映
function #player_item_tuner:merge/inventory
