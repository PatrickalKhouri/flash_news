class News < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :grades
  has_many :tags, through: :taggings
  has_one_attached :photo

  validates :description_es, :description_pt, :title_es, :title_pt, presence: true
  validates :description_es, :description_pt length: { minimum: 30 }
end
