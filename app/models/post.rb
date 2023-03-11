class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments
  after_save :count_posts

  def most_recent_comments
    comments.order(created_at: :desc).limit(5)
  end

  def count_posts
    author.update(posts_counter: author.posts.all.length)
  end
end
