class UserMailer < ActionMailer::Base
  default from: "test@test.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activate_user.subject
  #
  def activate_user(user)
    @user = user
    mail :to =>user.email, :subject=>"User Confirmation"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user = user
    mail :to =>user.email, :subject=>"Password Reset"
  end
end
