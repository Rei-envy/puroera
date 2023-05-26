class Share < ApplicationRecord
    belongs_to :user
    # has_many :comments
    # extend ActiveHash::Associations::ActiveRecordExtensions
    # belongs_to :category
end
