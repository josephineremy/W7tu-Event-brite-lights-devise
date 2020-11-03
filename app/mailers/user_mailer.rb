class UserMailer < ApplicationMailer
  default from: 'jremy2@audencia.com'

  def welcome_email(user)
    @user = user
    @url = "http://event-brite-light.heroku.com/login"
    mail(to: @user.email, subject: "Bienvenue dans le créateur d'évènement de Jo !")
  end

end
