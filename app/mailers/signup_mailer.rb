class SignupMailer < ActionMailer::Base
  default from: "douniabounahmidi@gmail.com"
  
  def welcome_email(signup)
    @signup = signup 
    @url = 'https://powerful-eyrie-99029.herokuapp.com/signups/new' 
    mail(to: @signup.email, subject: 'Welcome to Stories')
  end 
  
end
