class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :post_owner?, only: [:edit, :update, :destroy]

  # GET /posts
  def index
<<<<<<< HEAD
    @posts = Post.paginate(page: params[:page], per_page: 1)
=======
    @posts = Post.all.order(created_at: :desc)
    @posts = @posts.paginate :page => params[:page] || 1, :per_page => 10      
>>>>>>> master
  end

  # GET /posts/1
  def show
  end

  # GET /posts/1/edit
  def edit
  end


  # PATCH/PUT /posts/1
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /posts/1
  def destroy
    @post.challenge.status = :chosen
    @post.challenge.save
    @post.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Post was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      if Post.exists?(params[:id])
        @post = Post.find(params[:id])
      else
        redirect_to posts_path
      end
    end

    # Whitelisted parameters
    def post_params
      params.require(:post).permit(:title, :content, :avatar, :avatar_cache, :remove_avatar)
    end

    # Checks to see if the post is owned by the current_user
    def post_owner?
      if current_user = @post.challenge.user
        true
      else
        flash[:notice] = "That's not yours!"
        redirect_to post_path(@post)
      end
    end

end
