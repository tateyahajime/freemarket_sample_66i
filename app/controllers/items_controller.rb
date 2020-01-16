class ItemsController < ApplicationController

  def index
    @item = Item.includes(:images).order('created_at DESC')
  end

  def new
    @item = Item.new
    @item.images.new
  end

  def create
  end

  def update
  end

  def destroy
  end
  
end

