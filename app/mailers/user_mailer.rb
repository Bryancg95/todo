class UserMailer < ApplicationMailer
  def new_item(user)
    mail(to: user.email, subject: 'a new task has been created')
  end

end
