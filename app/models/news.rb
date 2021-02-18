class News < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :grades,  dependent: :destroy
  has_many :tags, through: :taggings
  has_one_attached :photo

  validates :content_es, :content_pt, :title_es, :title_pt, :photo, presence: true
  #validates :description_es, :description_pt length: { minimum: 30 }

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
        Tag.where(name: name.strip).first_or_create!
    end
  end
  
  def all_tags
    self.tags.map(&:name).join(", ")
  end
end
