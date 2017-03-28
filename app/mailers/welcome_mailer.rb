class WelcomeMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    attachments.inline['logo.png'] = File.read('/logo.png')
    mail(to: @user.email, subject: "Welcome to Actividay!")
  end

end
