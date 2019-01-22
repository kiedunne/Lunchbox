class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
         has_one_attached :avatar
=======
  has_many :spots, dependent: :destroy
  
>>>>>>> 91165cc224e305d2cdbee8338701a17d59f73fbb
end
