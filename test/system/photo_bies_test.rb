require "application_system_test_case"

class PhotoBiesTest < ApplicationSystemTestCase
  setup do
    @photo_by = photo_bies(:one)
  end

  test "visiting the index" do
    visit photo_bies_url
    assert_selector "h1", text: "Photo Bies"
  end

  test "creating a Photo by" do
    visit photo_bies_url
    click_on "New Photo By"

    fill_in "Name", with: @photo_by.name
    click_on "Create Photo by"

    assert_text "Photo by was successfully created"
    click_on "Back"
  end

  test "updating a Photo by" do
    visit photo_bies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @photo_by.name
    click_on "Update Photo by"

    assert_text "Photo by was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo by" do
    visit photo_bies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo by was successfully destroyed"
  end
end
