class HomeController < ApplicationController
	
  def index
  	@newsitems = Newsitem.all
  end
  
  def login
  	
  	if session[:id] != nil
  		redirect_to :action => :index
    end
  	
  	if request.post?
  		acc = Account.find(:first, :conditions => { :email => params[:user][:username] })
  		if acc != nil && acc.password == hash(params[:user][:password])
  			session[:id] = acc.a_id
  			flash[:success] = "Successfully logged in"
  			redirect_to :action => :index
  		else
  			flash[:error] = "Invalid email/password combination"
  		end
  	end
  end
  
  def logout
	reset_session
	flash[:success] = "Successfully logged out"
	redirect_to :action => :index
  end
 
  def email_signup
  	if params[:email][:value] != ""
  		@email = Email.new
  		@email.email = params[:email][:value]
  		if @email.save
  			flash[:success] = "You have been added to the email list!"
  			redirect_to :controller => :home, :action => :index
  		end
  	else
  		flash[:error] = "No email was entered"
  	end
  end
end
