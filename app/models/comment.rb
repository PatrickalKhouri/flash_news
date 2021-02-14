class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :news
  belongs_to :video
  belongs_to :language
end
