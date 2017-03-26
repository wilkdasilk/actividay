class Activity < ApplicationRecord

  has_many :challenges
  has_many :users, :through => :challenges
  has_many :posts, :through => :challenges

end
