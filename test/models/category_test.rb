require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "should not save category without name" do
    category = Category.new
    assert !category.save
  end

  test "should find Category by name" do
    category = Category.find_by name: 'ruby'
    assert_not_nil category
    assert_equal category.name, 'ruby'
  end
end
