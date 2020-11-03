class Post < ApplicationRecord
  belongs_to :account
  belongs_to :community

  validates :title, :body, presence: true

end
