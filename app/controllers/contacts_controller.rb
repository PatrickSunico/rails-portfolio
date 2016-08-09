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
      respond_to do |format|
        format.html { render "contacts/new", notice: "Post Successful" }
        format.json { render json: @contact }
        format.js


      end
    else
      respond_to do |format|
        format.html { render :new , notice: "Post Error"}
        format.js { @contact.errors.any? }
      end
    end
  end

  private
    # Save this for later improvement
    def contact_params
      params.require(:contact).permit(:name, :message, :email, :nickname)
    end

end
