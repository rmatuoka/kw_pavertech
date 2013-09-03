class ContactMailer < ActionMailer::Base
  default :from => "Korewa <log@korewa.com.br>"

  def send_contact_to_adm(contact)
    @contact = contact
    mail(:to => "bsouza@korewa.com.br", :bcc => "log@korewa.com.br", :subject => "Contato Pavertech")
  end
end