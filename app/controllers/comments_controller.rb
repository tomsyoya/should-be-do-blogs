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
      redirect_to @comment
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
  def get_params
    params.require(:commnt).permit(:content, :post_id)
  end
  
  def get_comment_id
    @comment = Comment.find(params[:id])
  end
  
end
