require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "should not create a comment without body" do
    comment = Comment.new
    comment.author = "Rodrigo"
    comment.post = Post.find(1)
    assert !comment.save
  end

  test "should not create a comment without author" do
    comment = Comment.new
    comment.post = Post.find(1)
    comment.body = "Some comment body"
    assert !comment.save
  end

  test "should not create a comment without an associated post" do
    comment = Comment.new
    comment.author = "Rodrigo"
    comment.body = "Some comment body"
    assert !comment.save
  end
end
