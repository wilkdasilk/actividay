class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  validate :avatar_size_validation
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :challenges
  has_many :activities, :through => :challenges
  has_many :posts, :through => :challenges

  private

  # source: http://stevenyue.com/blogs/validate-attachment-file-size-and-type-in-rails/
  def avatar_size_validation
    errors[:avatar] << "should be less than 5MB" if avatar.size > 5.megabytes
  end

end
