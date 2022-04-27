require "test_helper"

class AquariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aquarium = aquaria(:one)
  end

  test "should get index" do
    get aquaria_url
    assert_response :success
  end

  test "should get new" do
    get new_aquarium_url
    assert_response :success
  end

  test "should create aquarium" do
    assert_difference('Aquarium.count') do
      post aquaria_url, params: { aquarium: { information: @aquarium.information, name: @aquarium.name, order: @aquarium.order, place: @aquarium.place, prefecture: @aquarium.prefecture, reading: @aquarium.reading } }
    end

    assert_redirected_to aquarium_url(Aquarium.last)
  end

  test "should show aquarium" do
    get aquarium_url(@aquarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_aquarium_url(@aquarium)
    assert_response :success
  end

  test "should update aquarium" do
    patch aquarium_url(@aquarium), params: { aquarium: { information: @aquarium.information, name: @aquarium.name, order: @aquarium.order, place: @aquarium.place, prefecture: @aquarium.prefecture, reading: @aquarium.reading } }
    assert_redirected_to aquarium_url(@aquarium)
  end

  test "should destroy aquarium" do
    assert_difference('Aquarium.count', -1) do
      delete aquarium_url(@aquarium)
    end

    assert_redirected_to aquaria_url
  end
end
