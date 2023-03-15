require 'rails_helper'

RSpec.describe Like, type: :model do
  before :each do
    @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')

    @post = Post.create(user: @post, title: 'Hello', text: 'This is my first post')

    @comment = Comment.create(post: @comment, user: @user, text: 'Hi Tom!')

    @like = Like.create(user: @author, post: @post)
  end

  it 'Comments user should equal to user who made the comment' do
    expect(@comment.user).to eq @user
  end
end
