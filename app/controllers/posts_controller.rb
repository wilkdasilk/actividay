class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_challenge, only: [:new, :edit]
  before_action :post_owner?, only: [:edit, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all.order(created_at: :desc)
    @posts = @posts.paginate :page => params[:page] || 1, :per_page => 10
  end

  def new
    @post= Post.new
  end

  def create
    challenge_id = params[:post][:challenge_id]
    @challenge = Challenge.find_by_id(challenge_id)
    @challenge.post = Post.create(post_params)
    @challenge.status = :posted
    respond_to do |format|
      if @challenge.save
        format.html { redirect_to @challenge.post, notice: 'Post was successfully saved.' }
      else
        format.html { render :new }
      end
    end
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
      if Post.friendly.exists?(params[:id])
        @post = Post.friendly.find(params[:id])
      else
        redirect_to posts_path
      end
    end

    def set_challenge
      if @post
        @challenge = @post.challenge
      else
        challenge_id = params[:challenge]
        @challenge = Challenge.find_by_id(challenge_id)
        return @challenge if my_challenges.include?(@challenge)
        redirect_to root_path
      end
    end

    # Whitelisted parameters
    def post_params
      params.require(:post).permit(:title, :content, :avatar, :avatar_cache, :remove_avatar)
    end

    # Checks to see if the post is owned by the current_user
    def post_owner?
      if current_user == @post.challenge.user
        true
      else
        flash[:notice] = "That's not yours!"
        redirect_to post_path(@post)
      end
    end

    def my_challenges
      current_user.challenges.where("created_at > ?", 3.day.ago).where.not(:status => :not_interested, :status => :posted).order(activity_id: :desc)
    end

end
