class ItemsController < ApplicationController

  def index
    items = Item.all
    render json: items, include: :user
  end
  def show
    items = Item.find_by(id: params[:id])
    render json: items, include: :items
  end

end
