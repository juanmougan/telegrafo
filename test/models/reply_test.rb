require "test_helper"

class ReplyTest < ActiveSupport::TestCase
  test "should not create a reply without body" do
    reply = Reply.new
    reply.author = "Susana"
    reply.comment = Comment.find(1)
    
    assert !reply.save
  end

  test "should not create a reply without author" do
    reply = Reply.new
    reply.comment = Comment.find(1)
    reply.body = "Some reply body"
    assert !reply.save
  end

  test "should not create a reply without an associated comment" do
    reply = Reply.new
    reply.author = "Carla"
    reply.body = "Some reply body"
    assert !reply.save
  end
end
