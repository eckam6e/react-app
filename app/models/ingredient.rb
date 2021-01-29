class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :recipe_id, presence: true
  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_integer: true }
end
