class SessionsController < Devise::SessionsController

    after_filter :after_login, :only => :create

    def after_login
      change_challenges_to_dormant
      change_challenges_to_expired
      challenges_needed = (3 - num_active_challenges)
      if challenges_needed > 0
        create_challenges(challenges_needed)
      end
      delete_expired
    end

    private

    def change_challenges_to_dormant
      current_user.challenges.each do |challenge|
        if (challenge.created_at < 1.day.ago && !challenge.posted?)
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

    def delete_expired
      current_user.challenges.each do |challenge|
        if challenge.expired?
          challenge.delete
        end
      end
    end

end
