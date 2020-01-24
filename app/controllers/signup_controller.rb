class SignupController < ApplicationController
  before_action :validates_new1, only: :new2 
  before_action :validates_new2, only: :new3 
  before_action :validates_new3, only: :new4
  # before_action :validates_new4, only: :new5  カード登録で必要

  def new1
    @user = User.new 
  end

  def new2
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:kana_last_name] = user_params[:kana_last_name]
    session[:kana_first_name] = user_params[:kana_first_name]
    session[:birth_year] = user_params[:birth_year]
    session[:birth_month] = user_params[:birth_month]
    session[:birth_day] = user_params[:birth_day]
    @user = User.new
  end

  def new3
      session[:phone] = user_params[:phone]
      @user = User.new 
  end
  
  def new4
    session[:zip_code] = user_params[:zip_code]
    session[:prefectures] = user_params[:prefectures]
    session[:city] = user_params[:city]
    session[:street] = user_params[:street]
    session[:building] = user_params[:building]
    session[:tell] = user_params[:tell]
    @user = User.new 
  end

  def new5
    # カード登録で必要
    # session[:number] = user_params[:number]
    # session[:expiration_date_month] = user_params[:expiration_date_month]
    # session[:expiration_date_year] = user_params[:expiration_date_year]
    # session[:code] = user_params[:code]
    sign_in User.find(session[:id]) unless user_signed_in?
  end

  def create
    @user = User.new(
      nickname: session[:nickname], 
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name], 
      first_name: session[:first_name], 
      kana_last_name: session[:kana_last_name], 
      kana_first_name: session[:kana_first_name], 
      birth_year: session[:birth_year],
      birth_month: session[:birth_month],
      birth_day: session[:birth_day],
      phone: session[:phone],
      zip_code: session[:zip_code],
      building: session[:building],
      prefectures: session[:prefectures],
      city: session[:city],
      street: session[:street],
      tell: session[:tell],
      number: session[:number],
      expiration_date_month: session[:expiration_date_month],
      expiration_date_year: session[:expiration_date_year],
      code: session[:code]
    )
    if @user.save
    # ログインするための情報を保管
      session[:id] = @user.id
      redirect_to new5_signup_index_path
    else
      render '/signup/registration'
    end
  end
  
  private
    def user_params
      params.require(:user).permit(
        :nickname, 
        :email, 
        :password, 
        :last_name, 
        :first_name, 
        :kana_last_name, 
        :kana_first_name, 
        :zip_code,
        :prefectures,
        :city,
        :street,
        :phone,
        :birth_year,
        :birth_month,
        :birth_day,
        :phone,
        :zip_code,
        :building,
        :prefectures,
        :city,
        :street,
        :tell,
        # :number,
        # :expiration_date_month, カード登録で必要
        # :expiration_date_year,
        # :code
      )
    end

    def validates_new1
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:kana_last_name] = user_params[:kana_last_name]
    session[:kana_first_name] = user_params[:kana_first_name]
    session[:birth_year] = user_params[:birth_year]
    session[:birth_month] = user_params[:birth_month]
    session[:birth_day] = user_params[:birth_day]

    @user = User.new(
      nickname: session[:nickname], 
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name], 
      first_name: session[:first_name], 
      kana_last_name: session[:kana_last_name], 
      kana_first_name: session[:kana_first_name], 
      birth_year: session[:birth_year],
      birth_month: session[:birth_month],
      birth_day: session[:birth_day],
      phone: "090"
    )
    
    render '/signup/new1' unless @user.valid?(:validates_new1)
  end

  def validates_new2
    session[:phone] = user_params[:phone]

    @user = User.new(
      nickname: session[:nickname], 
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name], 
      first_name: session[:first_name], 
      kana_last_name: session[:kana_last_name], 
      kana_first_name: session[:kana_first_name], 
      birth_year: session[:birth_year],
      birth_month: session[:birth_month],
      birth_day: session[:birth_day],
      phone: session[:phone],
      zip_code: "123",
      building: "1",
      prefectures: "東京",
      city: "渋谷区",
      street: "1-2",
      tell: "0120"
    )
    render '/signup/new2' unless @user.valid?(:validates_new2)
  end

  def validates_new3
    session[:zip_code] = user_params[:zip_code]
    session[:building] = user_params[:building]
    session[:prefectures] = user_params[:prefectures]
    session[:city] = user_params[:city]
    session[:street] = user_params[:street]
    session[:tell] = user_params[:tell]

    @user = User.new(
      zip_code: session[:zip_code], 
      building: session[:building], 
      prefectures: session[:prefectures], 
      city: session[:city], 
      street: session[:street], 
      tell: session[:tell], 
      
      number: "1234",
      expiration_date_month: "1",
      expiration_date_year: "8",
      code: "1111"
    )
    # render '/signup/new3' unless @user.valid?(:validates_new3)
  end
    
  # def validates_new4
  #   session[:number] = user_params[:number]
  #   session[:expiration_date_month] = user_params[:expiration_date_month]
  #   session[:expiration_date_year] = user_params[:expiration_date_year]
  #   session[:code] = user_params[:code]
    # カード登録で必要

  #   @user = User.new(
  #     number: session[:number], 
  #     expiration_date_month: session[:expiration_date_month], 
  #     expiration_date_year: session[:expiration_date_year], 
  #     code: session[:code], 
  #   )
  # カード登録で必要
  
  #   render '/signup/new4' unless @user.valid?(:validates_new4)  上はバリデーションの部分なので取っておく
  # end

end
