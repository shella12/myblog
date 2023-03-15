class Post < ApplicationRecord
  belongs_to :user, class_name: 'User',  foreign_key: :author_id
  has_many :likes
  has_many :comments
  # after_save :count_posts

  validates :title, presence: true, length: { in: 1..250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def most_recent_comments
    comments.order(created_at: :desc).limit(5)
  end

  private

  # def count_posts
  #   user.update(posts_counter: user.posts.all.length)
  # end
end
