require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(body: 'First comment test', user_id: 1, post_id: 1)
  end

  test 'the post comment body should not be empty' do
    @comment.body = ' '
    assert_not @comment.save
  end

  test 'for a minimum comment length' do
    @comment.body = 'a' * 4
    assert_not @comment.valid?
  end
end
