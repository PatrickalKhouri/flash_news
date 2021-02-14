class Language < ApplicationRecord
  has_many :tags
  has_many :comments
  validates :name, inclusion: { in: ['PT', 'ES'] }
end
