require "test_helper"

class PhotoBiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_by = photo_bies(:one)
  end

  test "should get index" do
    get photo_bies_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_by_url
    assert_response :success
  end

  test "should create photo_by" do
    assert_difference('PhotoBy.count') do
      post photo_bies_url, params: { photo_by: { name: @photo_by.name } }
    end

    assert_redirected_to photo_by_url(PhotoBy.last)
  end

  test "should show photo_by" do
    get photo_by_url(@photo_by)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_by_url(@photo_by)
    assert_response :success
  end

  test "should update photo_by" do
    patch photo_by_url(@photo_by), params: { photo_by: { name: @photo_by.name } }
    assert_redirected_to photo_by_url(@photo_by)
  end

  test "should destroy photo_by" do
    assert_difference('PhotoBy.count', -1) do
      delete photo_by_url(@photo_by)
    end

    assert_redirected_to photo_bies_url
  end
end
