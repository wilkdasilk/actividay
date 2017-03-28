class WelcomeMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    attachments.inline['logo.png'] = File.read(Rails.root.join('app', 'assets', 'images', 'logo.png')
    mail(to: @user.email, subject: "Welcome to Actividay!")
  end

end
