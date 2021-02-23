class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :news
  #belongs_to :video
  belongs_to :language

  validates :description, presence: true
  #validates :description, length: { minimum: 10 }

end
