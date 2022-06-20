# Close Detector

Detect Opening/Closing Containers  
コンテナの開閉を検知します

## 動作確認済みバージョン / Verified minecraft versions

- 1.19

## 一緒に入れてね / Dependencies

Oh! My Dat!(<https://github.com/Ai-Akaishi/OhMyDat>)  
Player Item Tuner(<https://github.com/Ai-Akaishi/PlayerItemTuner>)

## 使い方 / How To Use

### 開閉時のファンクションの登録 / Register Callback

```json
開いた時に呼び出したいファンクションの登録  
Registration of functions to be called when opened  
  
close_detector/tags/functions/on_opened.json  
{  
    "values": [  
        "your_datapack:open"  
    ]  
}  
  
  
閉じた時に呼び出したいファンクションの登録  
Registration of functions to be called when closed  
  
close_detector/tags/functions/on_closed.json  
{  
    "values": [  
        "your_datapack:close"  
    ]  
}
```

### 開いているコンテナの種類の検知 / Detection of open container types

開いているコンテナの種類はpredicateで簡単に記述できます。
The type of open container can be easily described with predicate.

- open:chest
- open:trapped_chest
- open:ender_chest
- open:barrel
- open:crafting_table
- open:cartography_table
- open:hopper
- open:dropper
- open:dispenser
- open:furnace
- open:blast_furnace
- open:smoker
- open:grindstone
- open:enchanting_table
- open:anvil(any type of anvils)
- open:anvil/normal
- open:anvil/chipped
- open:anvil/damaged
- open:shulker_box(any type of shulker_boxs)
- open:shulker_box/normal
- open:shulker_box/white_shulker_box
- open:shulker_box/orange_shulker_box
- open:shulker_box/magenta_shulker_box
- open:shulker_box/light_blue_shulker_box
- open:shulker_box/yellow_shulker_box
- open:shulker_box/lime_shulker_box
- open:shulker_box/pink_shulker_box
- open:shulker_box/gray_shulker_box
- open:shulker_box/light_gray_shulker_box
- open:shulker_box/cyan_shulker_box
- open:shulker_box/purple_shulker_box
- open:shulker_box/blue_shulker_box
- open:shulker_box/brown_shulker_box
- open:shulker_box/green_shulker_box
- open:shulker_box/red_shulker_box
- open:shulker_box/black_shulker_box
- open:chest_boat
- open:chest_minecart
- open:hopper_minecart

```nim
樽を開いている場合にメッセージを出す  
Show a message when a barrel is open.  
  
execute if predicate open:barrel run say I'm looking through the barrels now.
```

## 連絡はこちら/Contact

<https://twitter.com/AiAkaishi>

## ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
