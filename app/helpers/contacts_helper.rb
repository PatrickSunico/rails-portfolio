module ContactsHelper
  def error_messages_for(object)
    render(:partial => "shared/errors", :locals => {:object => object})
  end
end
