class AboutSectionController < ApplicationController
  # before_action :find_post, only: [:show, :edit, :update, :destroy]
  layout 'portfolio-layout'
  before_action :find_about, only: [:edit, :update]
  def new
    @about = AboutSection.new
  end

  def create
    @about = AboutSection.new(about_params)
    if @about.save
      redirect_to '/', notice: "Success"
    else
      render 'new', notice: "Error"
    end
  end

  def edit
  end

  def update
    if @about.update_attributes(about_params)
      redirect_to '/', notice: "Success"
    else
      render 'edit'
    end

  end

  private
    def about_params
      params.require(:about).permit(:main_title, :second_title, :description)
    end

    def find_about
      @about = AboutSection.find(1)
    end
end
