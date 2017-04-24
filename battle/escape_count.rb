#==============================================================================
# ■ 逃走回数の記録 v1.1                          MIT License; see git.io/tic
#------------------------------------------------------------------------------
# 　逃走回数を記録します。イベントコマンド［変数の操作］にて逃走回数を取得する
# には、オペランドにスクリプト $game_system.escape_count を指定します。
#==============================================================================

class << BattleManager
  #--------------------------------------------------------------------------
  # ● 逃走の処理【エイリアス】
  #--------------------------------------------------------------------------
  alias toruic_process_escape process_escape
  def process_escape
    success = toruic_process_escape
    $game_system.escape_count += 1 if success
    return success
  end
end
#------------------------------------------------------------------------------
class Game_System
  attr_accessor :escape_count             # 逃走回数
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化【エイリアス】
  #--------------------------------------------------------------------------
  alias toruic3_initialize initialize
  def initialize
    toruic3_initialize
    @escape_count = 0
  end
end
