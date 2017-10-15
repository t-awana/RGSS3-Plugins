#==============================================================================
# ■ 勝利回数の記録 v1.0                          MIT License; see git.io/tic
#------------------------------------------------------------------------------
# 　勝利回数を記録します。イベントコマンド［変数の操作］にて勝利回数を取得する
# には、オペランドにスクリプト $game_system.win_count を指定します。
#==============================================================================

class << BattleManager
  #--------------------------------------------------------------------------
  # ● 勝利の処理【エイリアス】
  #--------------------------------------------------------------------------
  alias toruic_process_victory process_victory
  def process_victory
    success = toruic_process_victory
    $game_system.win_count += 1 if success
    return success
  end
end
#------------------------------------------------------------------------------
class Game_System
  attr_accessor :win_count                # 勝利回数
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化【エイリアス】
  #--------------------------------------------------------------------------
  alias toruic4_initialize initialize
  def initialize
    toruic4_initialize
    @win_count = 0
  end
end