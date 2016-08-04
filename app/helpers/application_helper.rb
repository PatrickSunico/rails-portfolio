module ApplicationHelper
  def flash_alerts
    render(:partial => "shared/notice")
  end
end
