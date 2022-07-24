class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end
  def index
    user = Item.all
    render json: user, include: :items
  end
end
