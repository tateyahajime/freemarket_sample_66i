class MypagesController < ApplicationController

  def mypage
    @user = User.find(params[:id])
  end
  def mypage_edit
  end
  def show
  end

  def logout
  end
  
  def register_user_date
  end

  def credit
  end

  def credit_date
  end
end
