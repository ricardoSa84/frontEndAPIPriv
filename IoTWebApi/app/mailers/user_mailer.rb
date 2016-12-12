class UserMailer < ApplicationMailer
  default from: 'opendataapi@ipt.pt'
 
  def mailRegisto(user)
    @user = user
    @url  = 'localhost:8000/login'
    mail(to: @user.email, subject: 'Registo IPT OPEN DATA API')
  end

  def mailPassRecovery(user)
    @user = user
    @url  = 'localhost:8000/changePassword?token=user.resetToken'
    mail(to: @user.email, subject: 'Recuperação de password')
  end
end