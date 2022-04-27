require "application_system_test_case"

class PhotoSetsTest < ApplicationSystemTestCase
  setup do
    @photo_set = photo_sets(:one)
  end

  test "visiting the index" do
    visit photo_sets_url
    assert_selector "h1", text: "Photo Sets"
  end

  test "creating a Photo set" do
    visit photo_sets_url
    click_on "New Photo Set"

    fill_in "Name", with: @photo_set.name
    click_on "Create Photo set"

    assert_text "Photo set was successfully created"
    click_on "Back"
  end

  test "updating a Photo set" do
    visit photo_sets_url
    click_on "Edit", match: :first

    fill_in "Name", with: @photo_set.name
    click_on "Update Photo set"

    assert_text "Photo set was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo set" do
    visit photo_sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo set was successfully destroyed"
  end
end
