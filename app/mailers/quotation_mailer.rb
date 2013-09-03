class QuotationMailer < ActionMailer::Base
  default :from => "Korewa <log@korewa.com.br>"

  def send_quotation_to_adm(quotation)
    @quotation= quotation
    mail(:to => "bsouza@korewa.com.br", :bcc => "log@korewa.com.br", :subject => "Contato Pavertech")
  end
end