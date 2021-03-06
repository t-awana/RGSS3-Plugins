#==============================================================================
# ■ テストプレイ機能無効化 RGSS3 v1.0            MIT License; see git.io/tic
#------------------------------------------------------------------------------
# 　$TEST に依存する処理を取り除き、テストプレイ機能を完全に無効化します。
#==============================================================================

class Game_Player
  #--------------------------------------------------------------------------
  # ● デバッグすり抜け状態判定【※再定義※】
  #--------------------------------------------------------------------------
  def debug_through?
    return false
  end
  #--------------------------------------------------------------------------
  # ● エンカウントの更新【※再定義※】
  #--------------------------------------------------------------------------
  def update_encounter
    return if $game_party.encounter_none?
    return if in_airship?
    return if @move_route_forcing
    @encounter_count -= encounter_progress_value
  end
end
#------------------------------------------------------------------------------
class Scene_Map
  #--------------------------------------------------------------------------
  # ● F9 キーによるデバッグ呼び出し判定【※再定義※】
  #--------------------------------------------------------------------------
  def update_call_debug
  end
end
