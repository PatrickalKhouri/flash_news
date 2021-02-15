class Video < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :grades
  has_many :tags, through: :taggings

  validates :description_es, :description_pt, :title_es, :title_pt, presence: true
end
