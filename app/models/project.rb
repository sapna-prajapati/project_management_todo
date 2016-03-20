class Project < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  validates :name, :description, presence: true

  def status(type)
    tasks.where(status: type).count
  end
end
