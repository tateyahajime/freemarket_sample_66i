class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]

         has_many :messages
        #  has_many :pays
         has_one :relationship
         has_many :shippings
         has_many :items
         has_many :messages
         has_many :sns_credentials
         
        #  VALID_EMAIL_REGEX =                 /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

        #  validates :nickname,     presence: true, length: {maximum: 20}, on: :validates_new1
        #  validates :email,     presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX },on: :validates_new1
        #  validates :password,     presence: true, length: {minimum: 6, maximum: 128},on: :validates_new1
        #  validates :last_name,     presence: true,on: :validates_new1
        #  validates :first_name,     presence: true,on: :validates_new1
        #  validates :kana_last_name,     presence: true,on: :validates_new1
        #  validates :kana_first_name,     presence: true,on: :validates_new1
        #  validates :birth_year,     presence: true,on: :validates_new1
        #  validates :birth_month,     presence: true,on: :validates_new1
        #  validates :birth_day,     presence: true,on: :validates_new1

        #  validates :phone,     presence: true,on: :validates_new2
         
        #  validates :zip_code,     presence: true,on: :validates_new3
        #  validates :building,     presence: true,on: :validates_new3
        #  validates :prefectures,     presence: true,on: :validates_new3
        #  validates :city,     presence: true,on: :validates_new3
        #  validates :street,     presence: true,on: :validates_new3
        #  validates :tell,     presence: true, on: :validates_new3

        #  validates :number,     presence: true,on: :validates_new4
        #  validates :expiration_date_month,     presence: true,on: :validates_new4
        #  validates :expiration_date_year,     presence: true,on: :validates_new4
        #  validates :code,     presence: true,on: :validates_new4
         

end
