class Shop < ActiveRecord::Base
  attr_accessible :name, :shopCode, :personFirstName, :personLastName, :description, :phone, :fax, :email, :addressLineOne, :addressLineTwo, :addressLineThree, :city
  has_many :contacts
  
  validates :name, :presence=>true
  validates :shopCode, :presence=>true
  validates :personFirstName, :presence=>true
  validates :personLastName, :presence=>true
  validates :email, :email=>true
  validates :addressLineOne, :presence=>true
  validates :city, :presence=>true #need more validation
  
  
end
