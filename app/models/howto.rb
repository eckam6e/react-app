class Howto < ApplicationRecord
  belongs_to :recipe

  validates :recipe_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
