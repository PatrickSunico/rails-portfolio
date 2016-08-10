class ContactsController < ApplicationController
  layout "portfolio-layout"

  def new
    # Render the contact view inside of index
    @contact = Contact.new
    # respond_to do |format|
    #   format.html
    #   format.json { render json: @contact }
    # end
  end

  def create
    # Pass the data from form to /create
    @contact = Contact.new(contact_params)
    @contact.request = request

    if @contact.deliver
      respond_to do |format|
        format.js
      end
    else
      respond_to do |format|
        format.js
      end
    end # end if/else
  end # End create

  private
    def contact_params
      params.require(:contact).permit(:name, :message, :email)
    end
end
