class Blog < ApplicationRecord
   has_many :messages, dependent: :destroy
end
