class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  # validates :quantity, numericality: { only_string: true }
  # validates :name, presence: true
end
