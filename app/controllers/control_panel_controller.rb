class ControlPanelController < ApplicationController
	before_filter :authenticate_user

  def index
  	@tab = params[:_tab]
  	case @tab
  		when 'NewArticle'
  			@article = Article.new
  		else
  			@article = Article.new
  	end
  end
end
