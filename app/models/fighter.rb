class Fighter < ApplicationRecord
  belongs_to :gender
  belongs_to :category
  belongs_to :martial_art
end
