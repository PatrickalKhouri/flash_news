class News < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :grades,  dependent: :destroy
  has_many :tags, through: :taggings
  has_one_attached :photo

  validates :content_es, :content_pt, :title_es, :title_pt, presence: true
  #validates :description_es, :description_pt length: { minimum: 30 }
end
