class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show, :update, :destroy]
  before_action :challenge_owner?, only: [:update, :destroy]
  # GET /challenges/1
  def show
  end

  # POST /challenges
  def create
    @challenge = Challenge.new(challenge_params)

    respond_to do |format|
      if @challenge.save
        format.html { redirect_to @challenge, notice: "You've accepted a challenge! Go get 'em!'" }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /challenges/1
  def update
    respond_to do |format|
      if @challenge.update(challenge_params)
        format.html { redirect_to @challenge, notice: 'Challenge was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /challenges/1
  def destroy
    @challenge.destroy
    respond_to do |format|
      format.html { redirect_to challenges_url, notice: 'Maybe next time...' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge
      @challenge = Challenge.find(params[:id])
    end

    def challenge_params
      params.require(:challenge).permit(:activity_id, :user_id, :status)
    end

    def challenge_owner?
      if current_user = @challenge.user
        true
      else
        flash[:notice] = "That's not your challenge!"
        redirect_to challenge_path(@challenge)
    end

end
