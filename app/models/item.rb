class Item < ActiveRecord::Base
  attr_accessible :description, :id, :name, :price
  has_many :comments
end
