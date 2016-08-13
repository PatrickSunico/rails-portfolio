module ApplicationHelper
  # Services Section
  def services_section(title, &block)
    render(:partial => 'editable-sections/services-section', :locals => {:title => title, :block => block})
  end

  # Toolset Section
  def toolset_section(title, &block)
    render(:partial => 'editable-sections/toolset-section', :locals => {:title => title, :block => block})
  end

  # Portfolio Section Structured partial
  def portfolio_section(title, &block)
    render(:partial => 'editable-sections/portfolio-section', :locals => {:title => title, :block => block})
  end

  # Contact Section Structured partial
  # Render a structured partial then inside of the structure partial render the form
  def contact_section(title, &block)
    render(:partial => "editable-sections/contact-section", :locals => {:title => title, :block => block})
  end
end
