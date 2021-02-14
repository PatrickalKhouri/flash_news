class Grade < ApplicationRecord
  belongs_to :user
  belongs_to :news
  belongs_to :video
end
