class Question < ApplicationRecord
  belongs_to :user
  has_many :answers,dependent: :destroy
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  def self.search(search)
    if search != ""
      Question.where('title LIKE(?)', "%#{search}%")
    else
      Question.all
    end
  end

  validates :title, presence: true
  validates :hypothesis, presence: true
  validates :category_id, numericality: { other_than: 1 }
end
