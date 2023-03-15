class Like < ApplicationRecord
  belongs_to :user, class_name: 'User',  foreign_key: :author_id
  belongs_to :post
  after_save :like_counter

  private

  def like_counter
    post.update(likes_counter: post.likes.all.length)
  end
end
