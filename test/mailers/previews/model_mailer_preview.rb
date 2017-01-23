# Preview all emails at http://localhost:3000/rails/mailers/model_mailer
class ModelMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/model_mailer/enquiry_approved_mailer
  def enquiry_approved_mailer
    ModelMailer.enquiry_approved_mailer
  end

end
