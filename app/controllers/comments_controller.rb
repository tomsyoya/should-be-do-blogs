class CommentsController < ApplicationController
  before_action :get_comment_id, only:[:edit, :update, :destroy]

  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  def create
    @comment = Comment.new(get_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to post_path(@comment.post_id)
    else
      @post = Post.find(@comment.post_id)
      render "new"
    end
  end

  def edit
    @post = Post.find(@comment.post_id)
  end

  def update
    if @comment.update(get_params)
      redirect_to post_path(@comment.post_id)
    else
      render "edit"
    end
  end

  def destroy
    post_id = @comment.post_id
    @comment.destroy
    redirect_to post_path(post_id)
  end

  private

  def get_params
    params.require(:comment).permit(:content, :post_id)
  end

  def get_comment_id
    @comment = Comment.find(params[:id])
  end

end
