class CommentsController < ApplicationController


  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create(comment_params)
    redirect_to post_path(@post)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(Comment.params)
    redirect_to post_path(@comment)
  end

  def delete
    @comment = Comment.find(params[:id])
    @comment.delete
    redirect_to post_path
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end


end
