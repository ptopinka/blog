class CommentsController < ApplicationController
 

  # POST /articles
  # POST /articles.xml
  def create
    comment = Comment.new(params[:comment]);
    a = Article.find(params[:article_id])
    comment.article = a
    comment.save
    
    redirect_to article_path(a), :notice => "Vytvoril jsem comment"
  end


  # DELETE /articles/1
  # DELETE /articles/1.xml
  def destroy
  end
end
