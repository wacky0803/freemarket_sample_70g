class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :nickname, :email, :password, :firstname,:lastname, :birthday presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
