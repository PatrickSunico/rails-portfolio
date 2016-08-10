module ApplicationHelper
  # Notices
  def flash_alerts
    render(:partial => "shared/notice")
  end
  # About Section
  def about_section(title, &block)

  end

  # Services Section
  def services_section(title, &block)
    render(:partial => 'editable-sections/services-section', :locals => {:title => title, :block => block})
  end

  # Portfolio Section Structured partial
  def portfolio_section(title, &block)
    render(:partial => 'editable-sections/portfolio-section', :locals => {:title => title, :block => block})
  end
  # Contact Section Structured partial
  def contact_section(title, &block)
    render(:partial => "editable-sections/contact", :locals => {:title => title, :block => block})
  end

end
