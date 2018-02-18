class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sent.subject
  #
  def sent(contact)

    @contact = contact

    mail(to: @contact.email, subject: "Thank you for your contact!")

  end

  def sent_admin(contact)
    @contact = contact
    @admin_mail = "gamelinks007@gmail.com"
    
    mail(to: @admin_mail, subject: "You Got Mail!")
  end

end