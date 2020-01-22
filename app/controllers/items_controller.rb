class ItemsController < ApplicationController

  require 'payjp'
  def index

    @item = Item.includes(:images,:shippings).order('created_at ASC')
    @items = Item.all
    # @parents = Category.all.order("id ASC").limit(13)
    @parents = Category.all

  end

  def new
    @item = Item.new
    @item.images.new
    @category_parent_array = []
    Category.where(ancestry: nil).each do |parent|
      # @category_parent_array << parent.name
      @category_parent_array << parent
    end
  end


  def get_category_children
    # binding.pry
    @category_children = Category.find_by("#{params[:parent]}", ancestry: nil).children
 end

 def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
 end

  def create
    @item = Item.new(item_params)
    if @item.save!
      flash[:notice] = "出品が完了しました"
      redirect_to root_path
    else
      flash[:alert] = '出品に失敗しました。必須項目を確認してください。'
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

  def pay
    @item = Item.find_by("#{params[:price]}")
    Payjp.api_key = "sk_test_f0603f441131265854585f27"
    Payjp::Charge.create(
      amount: @item.price, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
    redirect_to root_path
  end

  def buy_view
    @item = Item.find_by("#{params[:id]}")
  end
  private

  def item_params
   
    # params.require(:item).permit(:image, :item_name, :description, :condition, :charges, :date, :price, :order_status_id, images_attributes: [:image1],).merge(user_id: 1, x_category_id: 1, y_category_id: 1, z_category_id: 1)
    params.require(:item).permit(:image, :item_name, :category_id, :description, :condition, :charges, :date, :brand, :size,:prefectures, :price, :prefectures, images_attributes: [:image]).merge(user_id: 1)
    # params.require(:item).permit(:image, :item_name, :description, :condition, :charges, :date, :price, :order_status_id).merge(user_id: params[:user_id], x_category_id: params[:x_category_id], y_category_id: params[:y_category_id], z_category_id: params[:z_category_id])
  end

end

