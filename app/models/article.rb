class Article < ApplicationRecord
  validates :title, presence: :true, length: { in: 6..60 }
  validates :content, presence: :true, length: { minimum: 10 }

  belongs_to :user
end
