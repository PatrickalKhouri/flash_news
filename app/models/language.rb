class Language < ApplicationRecord
  has_many :comments
  validates :name, presence: true
end
