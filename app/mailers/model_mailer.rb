class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.enquiry_approved_mailer.subject
  #

  #def enquiry_approved_mailer(enquiry, user)
  #  #@enquiry = Enquiry.find(params[:id])
  # # @user = User.find(params[:id])
   # @enquiry = enquiry
    #@user = user
    #mail( to: @user.email, subject: "Uw werkvergunning is goedgekeurd")
    #mail( to: marco.groenhof@jpbgroep.nl, subject: "Uw werkvergunning is goedgekeurd")
  #end

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welkom in het JPB Werkvergunningensysteem.')
  end

  def confirmation_mail(user, enquiry)
    @user = user
    @enquiry = enquiry
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Uw werkvergunning is aangevraagd.')
  end


end
