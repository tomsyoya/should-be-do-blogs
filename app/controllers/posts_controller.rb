class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :check_logged_in

  def index
    @posts = Post.all.order("id DESC")
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = current_user.posts.create(post_params)

     if @post.save
       redirect_to @post, notice: "新規ポスト: #{@post.title} の投稿に成功しました"
     else
       render :new
     end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "ポスト: #{@post.title} を更新しました"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: "ポスト: #{@post.title} を削除しました"
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content, :image)
    end
    
    def check_logged_in
      if !logged_in?
        redirect_to new_session_path
      end
    end
end
