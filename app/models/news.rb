class News < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :grades
  has_many :tags, through: :taggings
end
