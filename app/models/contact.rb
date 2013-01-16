class Contact < ActiveRecord::Base
  attr_accessible :ContactType, :ContactValue
  belongs_to shop
  
  validates :ContactType, :presence => { :message => "invalid contact type"}, :inclusion => { :in => 1..10 }
  validates :ContactValue, :presence => true
  validates :ContactValue, :email=>true if ContactType == 7
  validates :ContactValue, :numericality => true if ContactType == 9
  
  PERSON_NAME=1
  WEBSITE=2
  MAP_URL=3
  MOBIILE=4
  PHONE=5
  FAX=6
  EMAIL=7
  WEIBO=8
  QQ=9
  MSN=10
  
end
