#==============================================================================
# ■ 場所移動後のマップ名表示修正 RGSS3 v1.0      MIT License; see git.io/tic
#------------------------------------------------------------------------------
# 　マップ名表示が OFF のまま場所移動しても、直後に ON に変更するとマップ名が
# 表示されてしまう不具合を修正します。
#==============================================================================

class Window_MapName
  #--------------------------------------------------------------------------
  # ● ウィンドウを開く【※再定義※】
  #--------------------------------------------------------------------------
  def open
    refresh
    @show_count = 150 if $game_map.name_display
    self.contents_opacity = 0
    self
  end
end