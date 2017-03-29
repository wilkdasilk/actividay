class Post < ApplicationRecord

  extend FriendlyId

  mount_uploader :avatar, AvatarUploader
  validate :avatar_size_validation

  validates :challenge_id, :title, :content, presence: true
  validates_presence_of :challenge_id, :title, :content, on: :update
  validates :title, length: {maximum: 75}
  validates :content, length: {maximum: 1000}

  belongs_to :challenge
  has_one :user, :through => :challenge
  has_one :activity, :through => :challenge

  friendly_id :title, use: :slugged

  private

  def avatar_size_validation
    errors[:avatar] << "should be less than 5MB" if avatar.size > 5.megabytes
  end

end
