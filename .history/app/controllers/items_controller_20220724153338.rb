class ItemsController < ApplicationController

  def index
    items = Item.all
    render json: items, include: :user
  end
    def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

end
