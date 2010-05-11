class NewsitemsController < ApplicationController

  uses_tiny_mce(:options => { :theme => 'advanced',
    :theme_advanced_buttons1 => "bold,italic,underline,strikethrough,undo,redo,justifyleft,justifycenter,justifyright,justifyfull,forecolor,seperator,backcolor",
    :theme_advanced_buttons2 => "bullist,numlist,outdent,indent,fontselect,fontsizeselect,image,code,blockquote",
    :theme_advanced_buttons3 => "",
    :width => "100%",
    :height => '500px',
    :theme_advanced_toolbar_location => "top"
  },
  :only => [:new_news, :edit]);
  	
  def index
  end
  
  def new_news
  	@newsitem = Newsitem.new
  	
  	if request.post?
  		@newsitem = Newsitem.new(params[:newsitem])
  		@newsitem.created_at = Time.now
  		if @newsitem.save
  			flash[:success] = "News is successfully posted."
  			redirect_to :controller => :home, :action => :index
  		end
  	end
  end
  
  def delete
  	item = Newsitem.find(:first, :conditions => { :n_id => params[:id] })
  	if item.destroy
  		flash[:success] = 'News item successfully deleted'
  		redirect_to :controller => :home
  	else
  		flash[:error] = 'News item not found'
  	end
  end
  
  def edit
  	@newsitem = Newsitem.find(:first, :conditions => { :n_id => params[:id] })
  	
  	if request.put? && @newsitem.update_attributes(params[:newsitem])
      flash[:success] = 'Newsitem was successfully updated.'
      redirect_to :controller => :home
    end	
  end
end