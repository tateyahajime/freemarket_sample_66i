class CardsController < ApplicationController

  before_action :set_item, only: [:pay, :buy_view]
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

  private

  def set_item
    @item = Item.find(params[:id])
  end
end
