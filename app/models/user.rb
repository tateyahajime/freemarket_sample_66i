class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]

         has_many :messages
         has_many :pays
         has_one :relationship
         has_many :shippings
         has_many :items
         has_many :messages
         has_many :sns_credentials
         
end
