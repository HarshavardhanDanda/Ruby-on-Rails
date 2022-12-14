class ArticlesController < ApplicationController
	def show
		@article = Article.find(params[:id])
	end

	def index
		@articles=Article.all 
	end

	def new 
		@article=Article.new
	end

	def create 
	  @article = Article.new(params.require(:article).permit(:title,:description))
		if @article.save
			#puts "saved"
			flash[:notice]="Article was created Successfully."
			redirect_to article_path(@article)
			#We can also use redirect_to @article
		else 
			render 'new'
 
		end
	end
	
end