#> close_detector:open/on_opened
# Open時の処理
# Give a detective item to the inventory.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 開いたとき処理呼び出し
function #close_detector:on_opened

### 検知用アイテムをセット
function close_detector:open/setup

# 個別ストレージ呼び出し
function #oh_my_dat:please
### インベントリ記録
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CloseDetector.Inventory set from entity @s Inventory
