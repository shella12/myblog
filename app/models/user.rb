class User < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy

  def most_recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end
