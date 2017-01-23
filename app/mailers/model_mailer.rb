class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.enquiry_approved_mailer.subject
  #
  def enquiry_approved_mailer
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
