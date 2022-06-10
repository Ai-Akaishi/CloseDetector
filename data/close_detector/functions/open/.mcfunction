#> close_detector:open/
# インベントリに検知用アイテムを渡す
# Give a detective item to the inventory.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 頭装備を持っていなかったら、頭装備にボタンでもつけちゃお！！
execute unless data entity @s Inventory[{Slot:103b}] run item replace entity @s armor.head with minecraft:stone_button{CloseDetectorItem:true,display:{Name:'"CloseDetectorItem"'},AttributeModifiers:[],Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
### 変化検知のため頭装備にタグをつける
data modify storage player_item_tuner: condition set value {if:{Slot:103b}}
data modify storage player_item_tuner: result set value {merge:{tag:{CloseDetector:true}}}
function #player_item_tuner:merge/inventory

# 個別ストレージ呼び出し
function oh_my_dat:please
### インベントリ記録
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CloseDetector.Inventory set from entity @s Inventory

### ラグ等の不具合回避のためにスキップ回数をリセットしておく
data modify storage close_detector: skip set value 0

### 開いたとき処理呼び出し
function #close_detector:on_opened
