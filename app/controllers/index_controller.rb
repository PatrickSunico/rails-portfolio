require 'json'
class IndexController < ApplicationController
  layout 'portfolio-layout'
    def index
      # render either html or json
      @data = JSON.parse(File.read("#{Rails.root}/app/assets/resources/data.json")) do
        respond_to do |format|
          format.html
          format.json { render json: @data }
        end
      end
      @services = JSON.parse(File.read("#{Rails.root}/app/assets/resources/services.json")) do
        respond_to do |format|
          format.html
          format.json { render json: @services }
        end
      end
      # Contacts
      # Show form on index
      @contact = Contact.new
    end

    def download
        send_file "#{Rails.root.join}/app/assets/resources/private/Patrick_Sunico_CV.pdf", :type=> "application/pdf", disposition: 'inline'
    end
end
