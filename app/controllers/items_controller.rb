class ItemsController < ApplicationController

  def index
    @images = Image.all
    @item = Item.includes(:images).order('created_at ASC')
  end

  def new
    @item = Item.new
    @item.images.new

  end

  def create
    @item = Item.new(item_params)
    if @item.save!
      redirect_to root_path
    else
      redirect_to new_item_path
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def update
  end

  def destroy
  end


  private

  def item_params
    # params.require(:image).permit(:image1, images_attributes: [:image1])
    # params.require(:image).permit(:image1, images_attributes: [:image1])
    # params.require(:shipping).permit(:charges)
    # params.require(:item).permit(:image, :item_name, :description, :x_category_id, :y_category_id, :z_category_id, :condition, :charges, :date, :price, :order_status_id, :x_category_name, :y_category_name, :z_category_name, images_attributes: [:image1], x_categorys_attributes: [:x_category_name], y_categorys_attributes: [:y_category_name], z_categorys_attributes: [:z_category_name])
    # end
    params.require(:item).permit(:image1, :item_name, :description, :condition, :charges, :date, :price, :order_status_id, images_attributes: [:image1]).merge(user_id: 1, x_category_id: 1, y_category_id: 1, z_category_id: 1)
    # params.require(:item).permit(:image, :item_name, :description, :condition, :charges, :date, :price, :order_status_id).merge(user_id: params[:user_id], x_category_id: params[:x_category_id], y_category_id: params[:y_category_id], z_category_id: params[:z_category_id])
  
  end
end

