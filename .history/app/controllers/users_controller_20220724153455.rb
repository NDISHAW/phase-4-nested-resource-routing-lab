class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end
  def index
    items = Item.all
    render json: items, include: :items
  end
end
