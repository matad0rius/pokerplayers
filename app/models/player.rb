class Player < ApplicationRecord
  belongs_to :establo

  validates :name, presence: true
end
