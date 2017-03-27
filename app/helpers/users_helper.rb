module UsersHelper

  def user_img_or_default(user)
    return default_img_url if user.avatar.file.nil?
    user.avatar.url
  end

  private

  def default_img_url
    asset_path('user.ico')
  end

end
