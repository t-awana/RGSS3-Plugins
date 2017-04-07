#==============================================================================
# ■ プロフィールをスクロール RGSS3 v2.0          MIT License; see git.io/tic
#------------------------------------------------------------------------------
# 　3行以上のプロフィールに対応(\nで改行)し、上下スクロールを可能にします。
#==============================================================================

class Window_Description < Window_Selectable
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(x, y, width)
    super(x, y, width, window_height)
    self.opacity = 0
  end
  #--------------------------------------------------------------------------
  # ● ウィンドウ高さの取得
  #--------------------------------------------------------------------------
  def window_height
    fitting_height(visible_line_number)
  end
  #--------------------------------------------------------------------------
  # ● 表示行数の取得
  #--------------------------------------------------------------------------
  def visible_line_number
    return 2
  end
  #--------------------------------------------------------------------------
  # ● アクターの設定
  #--------------------------------------------------------------------------
  def actor=(actor)
    return if @actor == actor
    @actor = actor
    refresh
  end
  #--------------------------------------------------------------------------
  # ● 項目数の取得
  #--------------------------------------------------------------------------
  def item_max
    @actor ? @actor.description.gsub(/\\n/i, "\r\n").lines.count : 0
  end
  #--------------------------------------------------------------------------
  # ● リフレッシュ
  #--------------------------------------------------------------------------
  def refresh
    create_contents
    draw_description
  end
  #--------------------------------------------------------------------------
  # ● 説明の描画
  #--------------------------------------------------------------------------
  def draw_description
    draw_text_ex(4, 0, @actor.description.gsub(/\\n/i, "\r\n"))
  end
  #--------------------------------------------------------------------------
  # ● フレーム更新
  #--------------------------------------------------------------------------
  def update
    super
    process_scroll
  end
  #--------------------------------------------------------------------------
  # ● スクロール処理
  #--------------------------------------------------------------------------
  def process_scroll
    row = top_row
    row -= 1 if Input.repeat?(:UP)   && row > 0
    row += 1 if Input.repeat?(:DOWN) && row < item_max - visible_line_number
    Sound.play_cursor if row != top_row
    self.top_row = row
  end
end
#------------------------------------------------------------------------------
class Window_Status
  #--------------------------------------------------------------------------
  # ● 解放【エイリアス】
  #--------------------------------------------------------------------------
  alias toruic_dispose dispose
  def dispose
    @description_window.dispose unless disposed?
    toruic_dispose
  end
  #--------------------------------------------------------------------------
  # ● フレーム更新【エイリアス】
  #--------------------------------------------------------------------------
  alias toruic_update update
  def update
    toruic_update
    @description_window.update
  end
  #--------------------------------------------------------------------------
  # ● 説明の描画【※再定義※】
  #--------------------------------------------------------------------------
  def draw_description(x, y)
    @description_window ||= Window_Description.new(x - 4, y, width - (x - 4))
    @description_window.actor = @actor
  end
end
