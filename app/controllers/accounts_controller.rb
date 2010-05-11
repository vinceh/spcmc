class AccountsController < ApplicationController
	
  def index
  end
  
  def new_account
  	@account = Account.new
  	
  	if request.post?
  		@account = Account.new(params[:account])
  		if @account.save
  			@account.update_attribute("password", hash(@account.password))  
  			flash[:success] = "Account created!  You may now log in!"
  			redirect_to :controller => :home, :action => :index
  		end
  	end
  end
end
