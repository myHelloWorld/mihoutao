class Attachment < ActiveRecord::Base
  belongs_to :item
  attr_accessible :index, :isProfile
end
