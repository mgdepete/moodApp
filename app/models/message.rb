class Message < ApplicationRecord

  validates :content, :color_hex, :presence => true

end
