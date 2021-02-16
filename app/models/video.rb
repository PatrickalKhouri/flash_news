class Video < ApplicationRecord
  belongs_to :user
  has_many :comments,  dependent: :destroy
  has_many :grades,  dependent: :destroy
  has_many :tags, through: :taggings

  validates :description_es, :description_pt, :title_es, :title_pt, presence: true
end
