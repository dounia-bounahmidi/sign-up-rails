class SignupMailer < ActionMailer::Base
  default from: "douniabounahmidi@gmail.com"
  
  def welcome_email
    @user = signup.last  
    mail(to: @user.email, subject: 'Welcome to Stories')
  end 
  
end
