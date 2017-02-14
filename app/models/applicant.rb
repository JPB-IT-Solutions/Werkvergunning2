class Applicant < ActiveRecord::Base
  belongs_to :enquiry
  has_one :contractor

  #mail naar aanvrager bij nieuwe enquiry
  after_create :send_created_mail
  def send_created_mail
    ModelMailer.new_enquiry_email(self).deliver
  end

end
