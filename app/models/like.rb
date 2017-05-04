class Like < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :user, :blog, presence: true
  validates :user_id, uniqueness: { scope: :blog_id }
end
