class Blog < ApplicationRecord
   has_attached_file :image_url, styles: { medium: "100x100>", thumb: "50x50>" }
   validates_attachment_content_type :image_url, content_type: /\Aimage\/.*\z/
   serialize :like, Array
   validates :title, :description, presence: true
   has_many :messages, dependent: :destroy
   # has_many :likes, dependent: :destroy
   belongs_to :user
   acts_as_likeable

   paginates_per 5
end
