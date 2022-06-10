#> close_detector:check_inventory/loop
# コンテナGUIを閉じた時の処理
# Process on closed Container GUI.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### スロット番号を検査
data modify storage close_detector: slot_mismatch set value {last:true,now:true}
execute if data storage close_detector: inventory.last[-1] store result storage close_detector: slot_mismatch.last byte 1 run data modify storage close_detector: slots[-1][0] set from storage close_detector: inventory.last[-1].Slot
execute if data storage close_detector: inventory.now[-1] store result storage close_detector: slot_mismatch.now byte 1 run data modify storage close_detector: slots[-1][1] set from storage close_detector: inventory.now[-1].Slot

### どっちかが一致していない時だけカウントアップ
execute if data storage close_detector: slot_mismatch{last:true,now:false} run function close_detector:check_inventory/save/now
execute if data storage close_detector: slot_mismatch{last:false,now:true} run function close_detector:check_inventory/save/last
execute if data storage close_detector: slot_mismatch{last:false,now:false} run function close_detector:check_inventory/save/check

execute if data storage close_detector: slot_mismatch{last:false} run data remove storage close_detector: inventory.last[-1]
execute if data storage close_detector: slot_mismatch{now:false} run data remove storage close_detector: inventory.now[-1]
data remove storage close_detector: slots[-1]

execute if data storage close_detector: slots[0] run function close_detector:check_inventory/loop
