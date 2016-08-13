class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :prepare_meta_tags, if: "request.get?"
  # Defaults
  def prepare_meta_tags(options={})
    site_name   = "Patrick Sunico"
    title       = [controller_name, action_name].join(" ")
    description = "Portfolio of Patrick Sunico, a Web developer and designer based in Manila, Philippines"
    image       = options[:image] || "http://www.patricksunico.com/portrait.png"
    current_url = request.url

    defaults = {
      site:        "Patrick Sunico",
      title:       "Web Designer | Developer",
      description: "Portfolio of Patrick Sunico, a Web developer and designer based in Manila, Philippines",
      keywords:    %w[Patrick Sunico Web Designer Web Developer Design Illustration Development Freelance Developer],
      icon: [
      { href: 'http://www.patricksunico.com/apple-touch-icon.png', type: 'image/png' },
      { href: 'http://www.patricksunico.com/apple-touch-icon-72x72.png', sizes: '72x72', type: 'image/png' },
      { href: 'http://www.patricksunico.com/apple-touch-icon-120x120', sizes: '120x120', type: 'image/png' },
      { href: 'http://www.patricksunico.com/apple-touch-icon-144x144', sizes: '144x144', type: 'image/png' },
      { href: 'http://www.patricksunico.com/apple-touch-precomposed.png', rel: 'apple-touch-icon-precomposed', type: 'image/png' }]
    }
    options.reverse_merge!(defaults)
    set_meta_tags options
  end
end
