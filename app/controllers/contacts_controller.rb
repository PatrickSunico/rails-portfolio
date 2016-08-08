class ContactsController < ApplicationController
  layout "portfolio-layout"
  def new
    # Render the contact view inside of index
    @contact = Contact.new
  end

  def create
    # Pass the data from form to /create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash[:success] = "Thanks for the message"
      render "new"
    else
      flash[:error] = "Cannot Send message"
      render :new
    end
  end

  private
    # Save this for later improvement
    def contact_params
      params.require(:contact).permit(:name, :message, :email, :nickname)
    end

end
