class ItemsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    items = Item.all
    render json: items, include: :user
  end
  def show
    items = Item.find_by(id: params[:id])
    render json: items, include: :users
  end
  
  private

  def render_not_found_response
    render json: { error: "Dog house not found" }, status: :not_found
  end

end
