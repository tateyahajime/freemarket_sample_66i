class CardsController < ApplicationController

  before_action :set_item, only: [:pay, :buy_view, :pay_destroy]
  after_action :pay_destroy, only: [:pay]
  require 'payjp'

  def pay
    Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_PRIVATE_KEY)
    Payjp::Charge.create(
      amount: @item.price, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
    redirect_to root_path
  end

  def buy_view
  end

  def pay_destroy
    if @item.destroy
      flash[:buy] = '購入しました'
    else
      flash[:buy_not] = '購入に失敗しました'
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end
end
