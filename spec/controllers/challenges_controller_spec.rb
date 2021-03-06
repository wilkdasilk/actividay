require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ChallengesController, type: :controller do

  describe "GET #show" do
    it "assigns the requested challenge as @challenge" do
      login_with create( :user )
      challenge = create( :challenge, user: subject.current_user )
      get :show, params: {id: challenge.to_param}
      expect(assigns(:challenge)).to eq(challenge)
    end
  end

  describe "PUT #not_intereseted" do
    it "updates the requested challenge to be not_interested" do
      login_with create( :user )
      challenge = create( :challenge, user: subject.current_user )
      put :not_interested, params: {id: challenge.to_param}
      challenge.reload
      expect(challenge.not_interested?).to eq(true)
    end
  end

  describe "PUT #update" do
    it "updates the requested challenge to be chosen" do
      login_with create( :user )
      challenge = create( :challenge, user: subject.current_user )
      put :update, params: {id: challenge.to_param}
      challenge.reload
      expect(challenge.chosen?).to eq(true)
    end
  end

  describe "PUT #update" do
    it "updates the requested challenge to be chosen" do
      login_with create( :user )
      challenge = create( :challenge, user: subject.current_user )
      challenge.status = "chosen"
      challenge.save
      put :update, params: {id: challenge.to_param}
      challenge.reload
      expect(challenge.unchosen?).to eq(true)
    end
  end

  describe "PUT #update" do
    it "updates the requested challenge to be chosen" do
      login_with create( :user )
      challenge = create( :challenge, user: subject.current_user )
      challenge.status = "posted"
      challenge.save
      put :update, params: {id: challenge.to_param}
      challenge.reload
      expect( response ).to redirect_to( root_path )
    end
  end

  describe "tests owner" do
    it "determines if the current user is the owner of the challenge" do
      login_with create( :user )
      challenge = create( :challenge )
      put :update, params: {id: challenge.to_param}
      expect( response ).to redirect_to( challenge_path(challenge) )
    end
  end

end
