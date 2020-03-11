class Fighter < ApplicationRecord
  has_one_attached :avatar
  belongs_to :gender
  belongs_to :category
  belongs_to :martial_art
end
