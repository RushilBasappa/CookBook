class Recipe < ActiveRecord::Base
  belongs_to :chef
  has_many :reviews
end
