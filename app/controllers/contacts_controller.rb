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
    # if result = success
    # Default
    if @result = @contact.deliver

    # if @contact.deliver
      # Default Mail_form
      # flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      # render "new"
      # # #
      respond_to do |format|
        # format.html { render :new, notice: "Post Successful" }
        format.json { render json: @contact, status: :created, location: @contact }
        format.js
      end
    else
      # Default Mail_form
      # flash.now[:error] = 'Cannot send message.'
      # render :new

      respond_to do |format|
        # format.html { render :new , notice: "Post Error"}
        format.json { render json: @contact.errors, status: :unprocessable_entity  }
        format.js
      end

      # respond_to do |format|
      #   format.html do
      #     if request.xhr?
      #       render :json => @contact.errors, :status => :unprocessable_entity
      #     else
      #       render :new, :status => :unprocessable_entity
      #     end
      #   end
      # end

    end # end if/else
  end # End create

  private
    def contact_params
      params.require(:contact).permit(:name, :message, :email)
    end
end
