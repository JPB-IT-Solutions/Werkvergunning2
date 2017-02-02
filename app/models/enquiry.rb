class Enquiry < ActiveRecord::Base

  has_many :enquirymeasures, dependent: :destroy, inverse_of: :enquiry
  accepts_nested_attributes_for :enquirymeasures, :reject_if => lambda { |a| a[:responsible].blank? }, :allow_destroy => true
has_many :measurements, through: :enquirymeasures


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



  #31-1-17 M Groenhof

 #after_update :send_approved_mail
 #def send_approved_mail
  #"#{ #if params[:approved] == '1'
 #if @enquiry.approved == '1'
 #ModelMailer.enquiry_approved_mailer(self).deliver
 #end

  #  end

  after_create :send_new_enquiry
  def send_new_enquiry
    ModelMailer.new_enquiry_jpb(self).deliver
  end


end