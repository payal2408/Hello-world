class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(hello)
		redirect_to @article		
	end


	def destroy
	    @article = Article.find(params[:article_id])
	    @comment = @article.comments.find(params[:id])
	    @comment.destroy
	    redirect_to article_path(@article)
	end

	private
	def hello
		params.require(:comment).permit(:name,:comment)
	end
end
