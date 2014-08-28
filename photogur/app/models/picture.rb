class Picture < ActiveRecord::Base
  scope :most_recent, -> {order(created_at: :desc)}
end
