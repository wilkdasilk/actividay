class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  extend FriendlyId

  mount_uploader :avatar, AvatarUploader
  validate :avatar_size_validation
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :challenges
  has_many :activities, :through => :challenges
  has_many :posts, :through => :challenges

  friendly_id :name, use: :slugged

  # helpful link: http://stackoverflow.com/questions/5613410/how-to-display-ages-instead-of-dates-of-birth-in-ruby-on-rails
  def age
    today = Date.today
    d = Date.new(today.year, self.born_on.month, self.born_on.day)
    age = d.year - self.born_on.year - (d > today ? 1 : 0)
  end

  private

  # source: http://stevenyue.com/blogs/validate-attachment-file-size-and-type-in-rails/
  def avatar_size_validation
    errors[:avatar] << "should be less than 5MB" if avatar.size > 5.megabytes
  end

end
