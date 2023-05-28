class Share < ApplicationRecord
  belongs_to :user
  # has_many :comments
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :title, presence: true
  validates :guess, presence: true
  validates :solution, presence: true
  validates :category_id, numericality: { other_than: 1 }
end
