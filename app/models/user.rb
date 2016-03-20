class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects, through: :tasks 
  has_many :tasks

  scope :developers, -> { where( role: "developer" ) }
  
  ROLES = %w[manager developer].freeze
  
  before_create :set_role

  ## Todo need to change
  def set_role
    self.role = 'developer'
  end

  def role?(type)
    self.role == type
  end  
end