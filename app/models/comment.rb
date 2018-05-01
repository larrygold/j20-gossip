class Comment < ApplicationRecord
  validates :anonymous_commentor, presence:true
  validates :body, presence:true
  belongs_to :gossip
end
