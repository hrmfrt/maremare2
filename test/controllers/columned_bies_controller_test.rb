require "test_helper"

class ColumnedBiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @columned_by = columned_bies(:one)
  end

  test "should get index" do
    get columned_bies_url
    assert_response :success
  end

  test "should get new" do
    get new_columned_by_url
    assert_response :success
  end

  test "should create columned_by" do
    assert_difference('ColumnedBy.count') do
      post columned_bies_url, params: { columned_by: { name: @columned_by.name } }
    end

    assert_redirected_to columned_by_url(ColumnedBy.last)
  end

  test "should show columned_by" do
    get columned_by_url(@columned_by)
    assert_response :success
  end

  test "should get edit" do
    get edit_columned_by_url(@columned_by)
    assert_response :success
  end

  test "should update columned_by" do
    patch columned_by_url(@columned_by), params: { columned_by: { name: @columned_by.name } }
    assert_redirected_to columned_by_url(@columned_by)
  end

  test "should destroy columned_by" do
    assert_difference('ColumnedBy.count', -1) do
      delete columned_by_url(@columned_by)
    end

    assert_redirected_to columned_bies_url
  end
end
