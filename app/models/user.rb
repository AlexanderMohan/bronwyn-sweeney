class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role
  validates :name, presence: true
  before_validation  :assign_role

  def assign_role
    self.role = Role.find_by name: 'Default' if role.nil?
  end
end
