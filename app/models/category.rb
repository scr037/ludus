class Category < ApplicationRecord
  belongs_to :gender


  def description 
  	self.name + " " + self.gender.name + " (" + self.weight.to_s + " kg)"
  end
end
