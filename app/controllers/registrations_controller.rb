class RegistrationsController < Devise::RegistrationsController

  after_filter :after_signup, :only => :create

  def after_signup
    if current_user
      # WelcomeMailer.welcome_email(current_user).deliver
      change_challenges_to_dormant
      change_challenges_to_expired
      challenges_needed = (3 - num_active_challenges)
      if challenges_needed > 0
        create_challenges(challenges_needed)
      end
    end
  end

  private

  def change_challenges_to_dormant
    current_user.challenges.each do |challenge|
      if (challenge.created_at < 1.day.ago && challenge.unchosen?)
        challenge.status = :dormant
        challenge.save
      end
    end
  end

  def change_challenges_to_expired
    current_user.challenges.each do |challenge|
      if (challenge.created_at < 3.day.ago && !challenge.posted? && !challenge.not_interested?)
        challenge.status = :expired
        challenge.save
      end
    end
  end

  def num_active_challenges
    current_user.challenges.unchosen.length + current_user.challenges.chosen.length +  current_user.challenges.where("created_at > ?", 1.day.ago).length
  end

  def create_challenges(challenges_needed)
    a = Activity.order("RANDOM()").first(challenges_needed)
    challenges_needed.times do |i|
      c = current_user.challenges.build(:activity_id => a[i].id)
      c.save
    end
  end

  def sign_up_params
    params.require(:user).permit(:name, :email, :goals, :born_on, :zip, :password, :password_confirmation, :avatar, :avatar_cache, :remove_avatar)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :goals, :born_on, :zip, :password, :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar)
  end

end
