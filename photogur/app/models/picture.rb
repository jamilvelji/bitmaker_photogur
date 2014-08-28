class Picture < ActiveRecord::Base
  scope :most_recent, -> {order(created_at: :desc)}
  scope :oldest_first, -> {order(created_at: :asc)}
end
