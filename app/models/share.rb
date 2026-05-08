class Share < ApplicationRecord
  has_rich_text :body

  enum :audience, { austin_paces: 0, family: 1, everyone: 2 }
end
