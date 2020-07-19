class Player < ApplicationRecord
  belongs_to :establo

  validates :name, presence: true

  has_one_attached :avatar
end
