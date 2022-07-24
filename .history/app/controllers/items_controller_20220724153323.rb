class ItemsController < ApplicationController

  def 1
    items = Item.all
    render json: items, include: :user
  end

end
