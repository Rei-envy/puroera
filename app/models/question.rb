class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  def self.search(search)
    if search != ""
      Tweet.where('title LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end

  validates :title, presence: true
  validates :hypothesis, presence: true
  validates :category_id, numericality: { other_than: 1 }
end
