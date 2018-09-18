class InvitationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invitation_mailer.create.subject
  #
  def create(user)
    @user_name = user.username

    mail to: user.email
  end
end
