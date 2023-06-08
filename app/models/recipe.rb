class Recipe < ActiveRecord::Base
    belongs_to :user
    has_many :recipe_dietaries
    has_many :dietaries, through: :recipe_dietaries
  end