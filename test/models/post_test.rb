# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: 'Title', body: 'Hello world!', user_id: '1')
  end

  test 'title should be present' do
    @post.title = '     '
    assert_not @post.valid?
  end

  test 'body should be present' do
    @post.body = '     '
    assert_not @post.valid?
  end

  test 'title should not be too long' do
    @post.title = 'a' * 41
    assert_not @post.valid?
  end

  test 'post should not be too small' do
    @post.title = 'a' * 4
    assert_not @post.valid?
  end

  test 'the post body should not be empty' do
    @post.body = ' '
    assert_not @post.save
  end
end
