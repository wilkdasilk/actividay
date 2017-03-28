module UsersHelper

  def user_img_or_default(user)
    return default_img_url if user.avatar.file.nil?
    user.avatar.url(:profile)
  end

  def user_posts
    @posts = @user.posts.order(created_at: :desc)
    @posts = @posts.paginate :page => params[:page] || 1, :per_page => 5
  end

  private

  def default_img_url
    asset_path('user.ico')
  end

end
