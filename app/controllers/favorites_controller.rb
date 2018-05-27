class FavoritesController < ApplicationController

  def create
    current_user.favorites.create(post_id: params[:post_id])
    redirect_to posts_path
  end

  def destroy
    current_user.favorites.find_by(post_id: params[:id]).destroy
    redirect_to posts_path
  end
end
