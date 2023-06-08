class Dietary < ActiveRecord::Base
    belongs_to :user
    has_many :recipe_dietaries
    has_many :recipes, through: :recipe_dietaries
  end