#==============================================================================
# ■ メニューのみのスキル戦闘時非表示 RGSS3 v1.0  MIT License; see git.io/tic
#------------------------------------------------------------------------------
# 　メニューのみ使用可能のスキルを戦闘画面から除外します。
#==============================================================================

class Window_BattleSkill
  #--------------------------------------------------------------------------
  # ● スキルをリストに含めるかどうか【エイリアス】
  #--------------------------------------------------------------------------
  alias toruic_include? include?
  def include?(item)
    toruic_include?(item) && item.battle_ok?
  end
end
