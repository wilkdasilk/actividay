class Post < ApplicationRecord

  validates :challenge_id, presence: true
  validates_presence_of :title, :content, on: :update
  validates :title, length: {maximum: 255}
  validates :content, length: {maximum: 1000}

  belongs_to :challenge
  
end
