class Tag < ApplicationRecord
  has_many :videos, through: :taggings
  has_many :taggings
  has_many :news, through: :taggings
  validates :language, inclusion: { in: ['PT', 'ES'] }
  validates :name, presence: true
end
