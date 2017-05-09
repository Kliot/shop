class Blog < ApplicationRecord
   # include Likable

   serialize :like, Array
   validates :title, :description, presence: true
   has_many :messages, dependent: :destroy
   has_many :likes, dependent: :destroy
   belongs_to :user
   acts_as_likeable
   paginates_per 5
end
