require "application_system_test_case"

class ColumnedBiesTest < ApplicationSystemTestCase
  setup do
    @columned_by = columned_bies(:one)
  end

  test "visiting the index" do
    visit columned_bies_url
    assert_selector "h1", text: "Columned Bies"
  end

  test "creating a Columned by" do
    visit columned_bies_url
    click_on "New Columned By"

    fill_in "Name", with: @columned_by.name
    click_on "Create Columned by"

    assert_text "Columned by was successfully created"
    click_on "Back"
  end

  test "updating a Columned by" do
    visit columned_bies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @columned_by.name
    click_on "Update Columned by"

    assert_text "Columned by was successfully updated"
    click_on "Back"
  end

  test "destroying a Columned by" do
    visit columned_bies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Columned by was successfully destroyed"
  end
end
