class Habit < ApplicationRecord

  has_many :riminders, dependent: :destroy
  has_many :users, through: :riminders

  validates :name, presence: true, uniqueness: true
  validates :repeat, presence: true, inclusion: { in: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday', 'Every Day'] }
  validates :goal, presence: true
  
  validates :start_date, presence: true

end
