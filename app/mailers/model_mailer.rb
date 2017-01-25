class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.enquiry_approved_mailer.subject
  #
  def enquiry_approved_mailer
    @greeting = "Hi"

    mail to: "marco.groenhof@jpbgroep.nl"
  end

  def approved_enquiry_notification(enquiry)
    @enquiry = Enquiry.find(params[:id])
    @user = User.find(params[:id])
   # mail( to: @user.email, subject: "Uw werkvergunning is goedgekeurd")
  end

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welkom in het JPB Werkvergunningensysteem.')
  end

end
