class IndexController < ApplicationController
  layout 'portfolio-layout'
  def index
    @about = AboutSection.all
    # services = ServivesSection.all
  end
end
