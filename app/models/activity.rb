class Activity < ApplicationRecord

  extend FriendlyId

  has_many :challenges
  has_many :users, :through => :challenges
  has_many :posts, :through => :challenges

  friendly_id :title, use: :slugged

  validates :title, :description, presence: true
  validates :title, length: {maximum: 75}

end
