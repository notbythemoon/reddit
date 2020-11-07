class Post < ApplicationRecord
  belongs_to :account
  belongs_to :community
  validates :title, :body, :account_id, presence: true
  has_many :comments

  def score
    (upvotes || 0) - (downvotes || 0)
  end
end
