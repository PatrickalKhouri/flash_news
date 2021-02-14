class Tagging < ApplicationRecord
  belongs_to :tag
  belongs_to :news
  belongs_to :videos
end
