class SignupsController < ApplicationController
  
  def new
    @signup = Signup.new 
  end 
  
  def create 
    @signup = Signup.new(signup_params)
    if @signup.save 
      redirect_to "/thanks"
      SignupMailer.welcome_email.deliver_now
    else 
      render 'new'
    end 
  end 
  
  def welcome_email 
		@signup = Signup.last
	end
  
  private 
  def signup_params 
    params.require(:signup).permit(:email, :firstname)
  end 
end
