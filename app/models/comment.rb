class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :share

  validates :comment, presence: true
end
