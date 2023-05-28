class Question < ApplicationRecord
    belongs_to :user
    # has_many :comments
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :category

    validates :title, presence: true
    validates :hypothesis, presence: true
    validates :category_id, numericality: { other_than: 1 }
end