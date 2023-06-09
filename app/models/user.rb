class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }, on: :create
  validates :image, presence: true

  has_one_attached :image
  has_many :shares
  has_many :comments
  has_many :questions
  has_many :answers
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
end
