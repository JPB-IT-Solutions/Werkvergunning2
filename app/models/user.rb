class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :enquiries

  validates_presence_of :name
  before_save :assign_role

  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'


  def assign_role
    self.role = Role.find_by name: "Aanvrager" if self.role.nil?
  end

  def admin?
    self.role.name == "Admin"
  end

  def aanvrager?
    self.role.name == "Aanvrager"
  end
end
