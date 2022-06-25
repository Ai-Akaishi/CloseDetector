#> close_detector:check_inventory/
# コンテナGUIを閉じた時の処理
# Process on closed Container GUI.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

# 個別ストレージ呼び出し
function #oh_my_dat:please

data modify storage close_detector: inventory.last set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CloseDetector.Inventory
data modify storage close_detector: inventory.now set from storage close_detector: new_inventory

data modify storage close_detector: slots set value [[0b,0b],[1b,1b],[2b,2b],[3b,3b],[4b,4b],[5b,5b],[6b,6b],[7b,7b],[8b,8b],[9b,9b],[10b,10b],[11b,11b],[12b,12b],[13b,13b],[14b,14b],[15b,15b],[16b,16b],[17b,17b],[18b,18b],[19b,19b],[20b,20b],[21b,21b],[22b,22b],[23b,23b],[24b,24b],[25b,25b],[26b,26b],[27b,27b],[28b,28b],[29b,29b],[30b,30b],[31b,31b],[32b,32b],[33b,33b],[34b,34b],[35b,35b],[100b,100b],[101b,101b],[102b,102b],[103b,103b],[-106b,-106b]]

data modify storage close_detector: skip set value 1
function close_detector:check_inventory/loop
execute store result storage close_detector: skip int 0.9999999999 run data get storage close_detector: skip
