#==============================================================================
# ■ タイマー一時停止 RGSS3 v1.1                  MIT License; see git.io/tic
#------------------------------------------------------------------------------
# 　タイマー停止後、0分0秒のタイマーを始動することで再開できるようにします。
#==============================================================================

class Game_Timer
  #--------------------------------------------------------------------------
  # ● 始動【エイリアス】
  #--------------------------------------------------------------------------
  alias toruic_start start
  def start(count)
    toruic_start(count > 0 ? count : @count)
  end
end
