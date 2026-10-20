class Post < ApplicationRecord
  has_rich_text :body
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
end
