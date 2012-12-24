class Item < ActiveRecord::Base
  attr_accessible :description, :id, :name, :price, :weight, :tags_attributes, :image, :remote_image_url
  has_many :comments
  has_many :tags
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k,v| v.blank?} }
 #http://railscasts.com/episodes/253-carrierwave-file-uploads
  mount_uploader :image, ImageUploader
end
