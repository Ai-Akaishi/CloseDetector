#> close_detector:close/on_closed
# Close時の処理
# Remove the detective item in the inventory.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 仮アイテムを元に戻す
function close_detector:close/tear_down

### 閉じた時の処理を呼び出し
function #close_detector:on_closed

# openトリガー有効化
advancement revoke @s only close_detector:open
