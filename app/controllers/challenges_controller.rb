class ChallengesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_challenge, only: [:show, :update, :destroy, :build_post, :not_interested]
  before_action :challenge_owner?, only: [:update, :destroy]
  # GET /challenges/1
  def show
  end

  # PATCH/PUT, updates a challenge to chosen or unchosen depending on its status.
  def update
    if @challenge.posted?
      respond_to do |format|
        format.html { redirect_to root_path, notice: "You can't give up on a challenge you've posted to."}
      end
    elsif @challenge.unchosen?
      @challenge.status = :chosen
      @challenge.save
      respond_to do |format|
        format.html { redirect_to root_path, notice: "You've accepted a challenge! Go get 'em!'"}
      end
    elsif @challenge.chosen?
      @challenge.status= :unchosen
      @challenge.save
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Maybe next time!"}
      end
    end
  end

  # PATCH/PUT, updates a challenge to posted if a post has been created for it.
  def not_interested
    @challenge.status = :not_interested
    @challenge.save
    respond_to do |format|
      format.html { redirect_to root_path, notice: "Ok, you won't see it again!!"}
    end
  end

  # creates a new post for a challenge then pasts that post to the posts controller.
  def build_post
    if !@challenge.post
      @challenge.build_post
      @challenge.status = :posted
      @challenge.save
    end
    redirect_to edit_post_path(@challenge.post)
  end

  private

    #Sets the challenge if the challenge exists, otherwise redirects home.
    def set_challenge
      if Challenge.exists?(params[:id])
        @challenge = Challenge.find(params[:id])
      else
        redirect_to root_path
      end
    end

    #whitelisted parameters
    def challenge_params
      params.require(:challenge).permit(:activity_id, :user_id, :status)
    end

    #determines if the challenge is owned by the current_user
    def challenge_owner?
      if current_user = @challenge.user
        true
      else
        flash[:notice] = "That's not your challenge!"
        redirect_to challenge_path(@challenge)
      end
    end

end
