class UserMailer < ActionMailer::Base
#  default from: "from@example.com"
# default :from => "notifications@example.com"

   default :from => "notifications@example.com"
  
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reset_password_email.subject
  #
def reset_password_email(user)
    @user = user
    @url = "http://juanpablo-2do.herokuapp.com/password_resets/#{user.reset_password_token}/edit"
    mail(:to => user.email,
         :subject => "Reset password request")
  end
  
end