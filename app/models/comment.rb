class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :account

  validates :message, :account_id, :post_id, presence: true
end
