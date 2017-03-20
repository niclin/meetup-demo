class Comment < ApplicationRecord
  belongs_to :meetup, counter_cache: true
  belongs_to :user
end
