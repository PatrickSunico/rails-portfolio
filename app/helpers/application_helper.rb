module ApplicationHelper
  # Notices
  def flash_alerts
    render(:partial => "shared/notice")
  end

  # Portfolio Section Structured partial
  def section_for(title, &block)
    render(:partial => 'editable-sections/portfolio-section', :locals => {:title => title, :block => block})

  end
end
