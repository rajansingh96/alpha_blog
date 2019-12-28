class ArticlesController < ActionController::Base

	def new
		@article = Article.new
	end

	def create 
		@article = Article.new(article_params)
		if @article.save
			
		else

		end
	end

	private

	def article_params
		params.require(:article).permit(:title,:description)
	end


end

