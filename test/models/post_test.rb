require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "should not save post without title" do
    post = Post.new
    post.author = "Juan"
    post.body = "TODO write down the post :)"
    assert !post.save
  end

  test "should not save post without author" do
    post = Post.new
    post.title = "My first post!"
    post.body = "TODO write down the post :)"
    assert !post.save
  end

  test "should add a post with categories" do
    post = Post.new
    post.title = "Developing an app with Ruby on Rails"
    post.author = "Juan"
    post.body = "TODO write down the post :)"
    first_category = Category.find(1)
    post.categories << first_category
    second_category = Category.find(2)
    post.categories << second_category

    assert post.save
    
    saved_post = Post.find_by author: "Juan"
    assert_includes saved_post.categories, first_category
    assert_includes saved_post.categories, second_category
    
  end
end
