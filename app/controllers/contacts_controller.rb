class ContactsController < ApplicationController
  layout "portfolio-layout"
  def new
    # Render the contact view inside of index
    @contact = Contact.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact }
    end
  end

  def create
    # Pass the data from form to /create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      # Default Mail_form
      # flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      # render "new"
      # # #

      respond_to do |format|
        format.html { render :new, notice: "Post Successful" }
        format.json
        format.js
      end
    else
      # Default Mail_form
      # flash.now[:error] = 'Cannot send message.'
      # render :new

      respond_to do |format|
        format.html { render :new , notice: "Post Error"}
        format.js
      end
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :message, :email)
    end
end
