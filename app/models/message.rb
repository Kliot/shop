class Message < ApplicationRecord
  belongs_to :blog, counter_cache: true
end
