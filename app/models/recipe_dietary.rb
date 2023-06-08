class RecipeDietary < ActiveRecord::Base
    belongs_to :recipe
    belongs_to :dietary
  end