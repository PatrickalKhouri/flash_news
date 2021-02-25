class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :news, optional: true
  belongs_to :video, optional: true
  belongs_to :language

  validates :description, presence: true
  #validates :description, length: { minimum: 10 }

end
