#==============================================================================
# ■ システム効果音のプリロード RGSS3 v1.0        MIT License; see git.io/tic
#------------------------------------------------------------------------------
# 　決定音などをゲーム起動時にあらかじめロードし、演奏の遅延を小さくします。
#==============================================================================

class << DataManager
  #--------------------------------------------------------------------------
  # ● モジュール初期化【エイリアス】
  #--------------------------------------------------------------------------
  alias tic_init init
  def init
    tic_init
    preload_important_sounds
  end
  #--------------------------------------------------------------------------
  # ● 【新規】重要な効果音のプリロード
  #--------------------------------------------------------------------------
  def preload_important_sounds
    4.times do |i|
      se = $data_system.sounds[i].dup
      se.volume = 0
      se.play
    end
  end
end