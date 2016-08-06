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

  end
end
