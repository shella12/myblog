require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject do
    @user = User.new
    @user.name = 'James'
    @user.posts_counter= 0
    @post = Post.new(user: @user, title: 'Hello', text: 'Teacher need to get trained', comments_counter: 0,
             likes_counter: 2)

      end

      before { subject.save }
          
      it "Comments counter will be incremented" do
      expect(@user.posts).to eq 1
      end
end
