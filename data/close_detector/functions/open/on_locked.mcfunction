#> close_detector:open/on_locked
# Lock時の処理
# Remove the detective item in the inventory if the container is locked.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### ロックされていた時の処理を呼び出し
function #close_detector:on_locked

# openトリガー有効化
advancement revoke @s only close_detector:open
