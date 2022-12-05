#> close_detector:open/
# インベントリに検知用アイテムを渡す
# Give a detective item to the inventory.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### Lock時は先にclosed処理が走るので区別できるようにしておく
data modify storage close_detector: open set value true

### ロック検知のため検知用アイテムをセットアップしてすぐに戻す
function close_detector:open/setup
function close_detector:close/tear_down

### openが消えてたらLockされてる
execute unless data storage close_detector: open run function close_detector:open/on_locked
### 開いたとき処理呼び出し
execute if data storage close_detector: open run function close_detector:open/on_opened

### スキップ回数リセット
data modify storage close_detector: skip set value 0

### ロック検知用ストレージ削除
data remove storage close_detector: open
