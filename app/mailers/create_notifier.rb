class CreateNotifier < ActionMailer::Base
  default from: "Administrator <railstest417622686@gmail.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.create_notifier.created.subject
  #
  def created(user)
    @user=user


    mail to: "yichen525@uchicago.edu"
  end
end
