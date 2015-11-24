class CommentController < ArticlesController
  # GET /articles/new
  def new
    comment = Comment.new
    

    comment.article_id = params[:article_id]
    comment.comment = params[:comment]
    comment.user = params[:name]
    
    comment.save
    
    redirect_to controller: :articles, action: :index
  end
end
