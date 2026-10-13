class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_rich_text :body
  has_many_attached :attachments
end
