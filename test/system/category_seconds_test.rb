require "application_system_test_case"

class CategorySecondsTest < ApplicationSystemTestCase
  setup do
    @category_second = category_seconds(:one)
  end

  test "visiting the index" do
    visit category_seconds_url
    assert_selector "h1", text: "Category Seconds"
  end

  test "creating a Category second" do
    visit category_seconds_url
    click_on "New Category Second"

    fill_in "Name", with: @category_second.name
    fill_in "Order", with: @category_second.order
    fill_in "Picture", with: @category_second.picture
    click_on "Create Category second"

    assert_text "Category second was successfully created"
    click_on "Back"
  end

  test "updating a Category second" do
    visit category_seconds_url
    click_on "Edit", match: :first

    fill_in "Name", with: @category_second.name
    fill_in "Order", with: @category_second.order
    fill_in "Picture", with: @category_second.picture
    click_on "Update Category second"

    assert_text "Category second was successfully updated"
    click_on "Back"
  end

  test "destroying a Category second" do
    visit category_seconds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category second was successfully destroyed"
  end
end
