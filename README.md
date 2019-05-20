# RGSS3-Plugins
[![license: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

RPGツクールVX Ace向けに作成した簡単なプラグイン（RGSS3素材）です。
[MIT License](/LICENSE)に従ってお使いください。

RPGツクールMV向けプラグイン→[RPGMV-Plugins](https://git.io/tmv)

## 🎮システム系
- [スキルタイプ別選択位置記憶](/system/last_skill.rb) v1.1 / RememberSkillByType
  - 最後に選択したスキルをスキルタイプ別に記憶します。
- [プレイ中画面OFF抑制](/system/display_required.rb) v1.0 (2017-04-07)
  - プレイ中にディスプレイの電源が切れたりスクリーンセーバーが起動したりしないようにします。
  - ゲームパッドでのプレイや、長時間の放置を要する場合に有用です。
- [アニメーション別速度設定](/system/animation_rate.rb) v1.0 (2017-04-10)
  - アニメーションの名前に `%2` のように数値を指定すると、アニメーションの速度をその数値で置き換えます。
  - 数値が小さいほどアニメーションは速く再生されます。
- [レベル増減時HPとMP割合保持](/system/preserve_mhp.rb) v1.0 (2017-04-22)
  - アクターのレベルが増減したとき、HP と MP の数値ではなく割合を保持します。
  - 例えば HP が満タンでレベルアップすれば、最大 HP が増えても満タンのままです。
- [ウィンドウ開閉の加減速](/system/accelerate_openness.rb) v1.0 (2019-03-18) / AccelerateWindowOpenness
  - すべてのウィンドウの開閉アニメーションを加減速させます。
- [戦闘テストのクラウド同期抑制](/system/drop_btest_database.rb) v1.0 (2019-04-01)
  - 戦闘テスト開始時に生成されるデータベースのファイル名を改名し、OneDrive や Dropbox などのクラウドストレージへ自動的にアップロードされないようにします。

## ⚔バトル系/システム
- [ステート自動付加・解除特徴](/battle/state_feature.rb) v2.0
  - 特定のタイミングでステートを自動的に付加・解除する特徴を作ります。
- [逃走不能特徴](/battle/escape_feature.rb) v1.0 / SealEscapeCommand
  - 逃走できなくなる特徴を作ります。
- [戦闘勝利BGM](/battle/victory_bgm.rb) v2.0
  - 戦闘勝利時、ME 演奏後に BGM を演奏します。
  - ME は演奏せず BGM のみを演奏する場合、別途 ME を `(なし)` に設定してください。
  - 逆に BGM のファイル名を `""` (なし) に設定すると、ME 演奏後無音にできます。
- [ドロップアイテム単一化](/battle/unique_dropitem.rb) v1.0 (2017-04-07)
  - 同じ敵が複数ドロップしないようにします。
- [戦闘敗北BGM](/battle/defeat_bgm.rb) v1.0 (2017-04-07)
  - 戦闘敗北時にBGMを演奏します。
- [逃走回数の記録【RPGMVバックポート】](/battle/escape_count.rb) v1.1 (2017-04-24)
  - 逃走回数を記録し、イベントコマンド［変数の操作］にて取得できるようにします。
- [勝利回数の記録【RPGMVバックポート】](/battle/win_count.rb) v1.0 (2017-04-24)
  - 勝利回数を記録し、イベントコマンド［変数の操作］にて取得できるようにします。
- [全体攻撃の適用順シャッフル](/battle/shuffle_targets.rb) v1.0 (2019-03-22)
  - 効果範囲が全体のスキル／アイテムのメモ欄に `<shuffle_targets>` と記入すると、通常先頭のバトラーから順となっている効果適用順序をランダムに変化させます。

## ⚔バトル系/画面表示
- [バトルで自分を優先選択](/battle/select_me.rb) v1.1 / InitTargetActorToUser
  - スキル・アイテムの対象アクター選択のカーソル初期位置をその使用者にします。
- [封印済スキルコマンドを無効化](/battle/sealed_skillcommand.rb) v1.1 / DisableSealedSkillCommand
  - バトル画面で、封印されたスキルタイプのコマンドを選べなくします。
- [ドロップアイテム個数表示](/battle/num_dropitems.rb) v1.0
  - 同じドロップアイテムをまとめ、ドロップアイテムに個数を表示します。
- [バトル画面の枠線の途切れ解消](/battle/battle_border.rb) v1.0
  - ステータスウィンドウに別のウィンドウが重なっても枠線を途切れなくします。
- [メニューのみのスキル戦闘時非表示](/battle/exclude_menuskill.rb) v1.0 (2017-04-08) / HideSkillByOccasion
  - メニューのみ使用可能のスキルを戦闘画面から除外します。
- [レベルアップ能力値表示](/battle/display_paramup.rb) v1.0 (2017-04-09)
  - アクターがレベルアップしたとき、各能力値の上昇量を表示します。
- [選択中の行動対象点滅【RPGMVバックポート】](/battle/selection_effect.rb) v1.0 (2017-04-29)
  - 戦闘中、行動対象の選択時に対象の画像が点滅するようにします。
- [武器不適合スキル戦闘時非表示](/battle/hideby_wtype.rb) v1.0 (2017-09-05) / HideSkillByWtype
  - 戦闘中、必要武器の条件を満たさないスキルを非表示にします。
- [スキルの使用時メッセージ修正【RPGMVバックポート】](/battle/skill_message.rb) v1.0 (2017-10-22)
  - スキルの使用時メッセージ 1 行目を空にすると、使用者の名前を非表示にします。

## 🎛メニュー系
- [【ステータス】プロフィールをスクロール](/menu/profile_scroll.rb) v2.0
  - 3行以上のプロフィールに対応し、上下スクロールを可能にします。
- [【ショップ】ショップの個数入力を快適化](/menu/shop_number.rb) v1.2 / WraparoundShopNum
  - 1個のときにさらに減らすと最大個数に、またその逆を可能にします。
- [【メニュー】メニューのアクター選択省略](/menu/quick_swap.rb) v2.0 / SkipActorSelectInMenu
  - 1人パーティーならスキル・装備・ステータスを選ぶと直ちにそれらを表示します。
  - 2人パーティーなら並び替えを選ぶと直ちに2人を入れ替えます。
- [【ステータス】最高レベルでも経験値を表示](/menu/max_exp.rb) v1.1
  - ステータス画面で、アクターが最高レベルならカンストした経験値を表示します。
- [【タイトル】【ゲーム終了】5文字用タイトルウィンドウ](/menu/title_5.rb) v1.1
  - タイトル・ゲーム終了ウィンドウを5文字分の幅にし、文字を中央揃えにします。
  - 「はじめから」「つづきから」に向いています。
- [【タイトル】タイトル画面に著作権表示](/menu/title_copyright.rb) v1.0
  - タイトル画面に任意の著作権表示を描画します。
- [【セーブ】【ロード】セーブ画面スクロール矢印表示](/menu/save_arrow.rb) v1.1
  - セーブ画面とロード画面にスクロール用矢印を表示します。
- [スナップショット自動解放](/menu/dispose_snapshot.rb) v1.0 (2017-04-08)
  - メニューの背景に使用されるスナップショットを適当なタイミングで解放します。
  - マップや戦闘でのメモリ使用量が 1 MB ほど削減できます。
- [【タイトル】初回起動時タイトルスキップ](/menu/skip_first_title.rb) v1.1 (2019-03-20) / SkipFirstTitle
  - セーブファイルが存在しない場合、タイトル画面を表示せずニューゲームします。

## 🗺マップ系
- [乗船中のBGM自動切り替え禁止](/map/riding_nonautoplay.rb) v1.0
  - 乗り物に乗っている状態で場所移動したときのBGM自動切り替えを禁止します。
- [テストプレイ機能無効化](/map/disable_testplay.rb) v1.0
  - `$TEST` に依存する処理を取り除き、テストプレイ機能を完全に無効化します。チート対策に。
- [ロード後マップ名表示](/map/loaded_mapname.rb) v1.0 (2017-04-07) / MapNameAfterLoad
  - ロード後にマップ名を表示します。
- [場所移動後のマップ名表示修正](/map/name_display.rb) v1.0 (2017-04-22)
  - マップ名表示が OFF のまま場所移動しても、直後に ON に変更するとマップ名が表示されてしまう不具合を修正します。
- [遠景床【RPGMVバックポート】](/map/zero_parallax.rb) v1.0 (2017-04-29)
  - ファイル名が `!` で始まる遠景を床（視差ゼロ）として扱うようにします。

## 💬イベント系
- [タイマー一時停止](/event/timer_resume.rb) v1.1
  - タイマー停止後、0分0秒のタイマーを始動することで再開できるようにします。
- [ゲームオーバー中央揃え](/event/center_gameover.rb) v1.0 (2017-04-09) / CenterGameoverImage
  - ゲームオーバー画面で画面サイズと異なる画像を中央揃えにします。
- [数値入力キャンセル](/event/num_cancel.rb) v1.0 (2017-04-09)
  - 名前に `?` を含む変数に対する数値入力の処理をキャンセルできるようにします。
  - キャンセルした場合、`-1 - 入力した数値`がその変数に格納されます。
- [文章途中で顔グラフィック変更](/event/change_face_image_in_text.rb) v1.2 (2019-01-11) / ChangeFaceImageInText
  - ［文章の表示］の途中、任意の時点で顔グラフィックを変更できるようにします。

## 免責事項
プログラムの性質上、他者のプラグインと組み合わせると機能の一部もしくは全部が正常動作しなくなる場合があります。
その場合はプラグインの導入順や設定の変更などを行って解決するかお試しください。

**あらゆる環境において全機能が期待どおり動作する保証は致しかねます**。予めご了承の上ご利用ください。

## Author
[Toru Higuruma](https://github.com/neofuji)
