class Community < ApplicationRecord
  belongs_to :account
  validates :url, :name, :rules, presence: true
  has_many :posts
  has_many :subscriptions
  has_many :subscribers, through: :subscriptions, source: :account
end
