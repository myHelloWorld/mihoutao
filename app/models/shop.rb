class Shop < ActiveRecord::Base
  attr_accessible :name, :shopCode, :personFirstName, :personLastName, :description, :phone, :fax, :email, :addressLineOne, :addressLineTwo, :addressLineThree, :city
  has_many :contacts
end
