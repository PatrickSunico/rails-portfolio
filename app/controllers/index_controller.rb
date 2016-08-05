class IndexController < ApplicationController
  layout 'portfolio-layout'
  def index
    @about = AboutSection.all
    # services = ServivesSection.all
  end



  def download
    send_file '#{Rails.root}/public/PS-CV.pdf', type: 'pdf', disposition: 'attachment'
  end
end
