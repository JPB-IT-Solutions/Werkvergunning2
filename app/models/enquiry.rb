class Enquiry < ActiveRecord::Base

  has_many :enquirymeasures, dependent: :destroy
  accepts_nested_attributes_for :enquirymeasures, :reject_if => lambda { |a| a[:responsible].blank? }, :allow_destroy => true

  has_many :tools, dependent: :destroy
  accepts_nested_attributes_for :tools, :reject_if => lambda { |a| a[:handtool].blank? }, :allow_destroy => true

  has_many :controls, dependent: :destroy
  accepts_nested_attributes_for :controls, reject_if: :all_blank

  has_one :applicant, dependent: :destroy
  accepts_nested_attributes_for :applicant, reject_if: :all_blank

  has_many :signatures, dependent: :destroy
  accepts_nested_attributes_for :signatures, reject_if: :all_blank
  has_many :representatives , through: :signatures, :source => :representatives

  has_many :gasmeters, dependent: :destroy
  accepts_nested_attributes_for :gasmeters, :reject_if => lambda { |a| a[:tester].blank? }, :allow_destroy => true

  belongs_to :user
  has_one :user
  accepts_nested_attributes_for :user, reject_if: :all_blank


  #voor de goedkeuring mail
  #after_create :send_confirmation_mail
  #def send_confirmation_mail
  #  ModelMailer.new_enquiry_mail(self).deliver
 # end

# after_update :send_approved_mail
 # def send_approved_mail
  #"#{ #if params[:approved] == '1'
   # if :approved == '1'
   # ModelMailer.enquiry_approved_mailer(self).deliver
   # end

  #  end
  end