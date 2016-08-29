module OrdersHelper
  def render_progress(percent)
    percent = percent.to_s + "%"
    content_tag :div, class: "progress" do
      content_tag :div, class: %w(progress-bar progress-bar-success progress-bar-striped), role: "progressbar", 'aria-valuenow': percent, 'aria-valuemin': "0", 'aria-valuemax': "100", 'style': "width: "+ percent + ";min-width:2em;"  do
        content_tag(:span, percent, class: "sr-only")
        percent
      end
    end
  end

  def render_support_empty_message
    content_tag :div, class: "text-center" do
      content_tag :span, "暂无支持项目"
    end
  end
end
