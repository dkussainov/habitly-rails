class Riminder < ApplicationRecord
  belongs_to :user
  belongs_to :habit

  validates :time, presence: true


end
