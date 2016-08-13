class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  validates :message, length: { minimum: 10 }

  def headers
    {
      :subject => "Enquiries",
      :to => "apatricksunico@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
