class Language < ApplicationRecord
  has_many :tags
  has_many :comments
end
