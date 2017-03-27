module PostsHelper

  def owner_avatar_or_default(post)
    return image_tag(asset_path("user-thumb.ico")) if post.challenge.user.avatar.file.nil?
    image_tag(post.challenge.user.avatar.url(:thumb))
  end

end
