require 'json'
class IndexController < ApplicationController
  layout 'portfolio-layout'
    def index
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
    end
    # End index
    
end
