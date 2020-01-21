class ItemsController < ApplicationController

  def index
    @item = Item.includes(:images,:shippings).order('created_at ASC')
    @items = Item.all
    # @parents = Category.all.order("id ASC").limit(13)
   

  end

  def new
    @item = Item.new
    @item.images.new
    @category_parent_array = []
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent
    end
  end


  def get_category_children
    @category_children = Category.find_by("#{params[:parent]}", ancestry: nil).children
 end

 def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
 end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "出品が完了しました"
      redirect_to root_path
    else
      flash[:alert] = '出品に失敗しました。必須項目を確認してください。'
      # redirect_to new_item_path,data: {"turbolinks" => false}
      render "new"
      
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
    params.require(:item).permit(:image, :item_name, :category_id, :description, :condition, :charges, :date, :brand, :size,:prefectures, :price, :prefectures, images_attributes: [:image]).merge(user_id: 1)
  end
end

