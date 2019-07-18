class Message < ApplicationRecord
  belongs_to :user
  default_scope -> {order(created_at: :desc)}
  # validates :user_id => true
  validates :content, :color_hex, :presence => true

end
