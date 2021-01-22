class RoastProfile < ApplicationRecord
  belongs_to :user
  has_many :roast_events
end
