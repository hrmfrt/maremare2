require "test_helper"

class CategorySecondsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_second = category_seconds(:one)
  end

  test "should get index" do
    get category_seconds_url
    assert_response :success
  end

  test "should get new" do
    get new_category_second_url
    assert_response :success
  end

  test "should create category_second" do
    assert_difference('CategorySecond.count') do
      post category_seconds_url, params: { category_second: { name: @category_second.name, order: @category_second.order, picture: @category_second.picture } }
    end

    assert_redirected_to category_second_url(CategorySecond.last)
  end

  test "should show category_second" do
    get category_second_url(@category_second)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_second_url(@category_second)
    assert_response :success
  end

  test "should update category_second" do
    patch category_second_url(@category_second), params: { category_second: { name: @category_second.name, order: @category_second.order, picture: @category_second.picture } }
    assert_redirected_to category_second_url(@category_second)
  end

  test "should destroy category_second" do
    assert_difference('CategorySecond.count', -1) do
      delete category_second_url(@category_second)
    end

    assert_redirected_to category_seconds_url
  end
end
