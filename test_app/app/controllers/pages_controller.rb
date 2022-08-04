class PagesController < ApplicationController 
  # def home 
  #   #redirect_to articles_path if logged_in?
  #   @pages=Page.search((params[:q].present? ? params[:q] : '*')).records 
  #   render 'home'
  # end
  
  def index 
    #query=params[:q].presence && params[:q][:query]
    #@pages=Page.search((params[:q].present? ? params[:q] : '*')).records 
    #@pages = Page.search('first').records
    #@pages=Page.all
    if params[:q].present? 
      @pages=Page.search(params[:q])
      #@pages=Page.search(params[:q]).paginate(page: params[:page], per_page: 2)
    else  
      @pages=Page.all
    end
  end
end