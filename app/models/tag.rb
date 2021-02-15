class Tag < ApplicationRecord
  belongs_to :language
  has_many :videos, through: :taggings
  has_many :news, through: :taggings

  validates :name, presence: true
end
