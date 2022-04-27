require "application_system_test_case"

class AquariaTest < ApplicationSystemTestCase
  setup do
    @aquarium = aquaria(:one)
  end

  test "visiting the index" do
    visit aquaria_url
    assert_selector "h1", text: "Aquaria"
  end

  test "creating a Aquarium" do
    visit aquaria_url
    click_on "New Aquarium"

    fill_in "Information", with: @aquarium.information
    fill_in "Name", with: @aquarium.name
    fill_in "Order", with: @aquarium.order
    fill_in "Place", with: @aquarium.place
    fill_in "Prefecture", with: @aquarium.prefecture
    fill_in "Reading", with: @aquarium.reading
    click_on "Create Aquarium"

    assert_text "Aquarium was successfully created"
    click_on "Back"
  end

  test "updating a Aquarium" do
    visit aquaria_url
    click_on "Edit", match: :first

    fill_in "Information", with: @aquarium.information
    fill_in "Name", with: @aquarium.name
    fill_in "Order", with: @aquarium.order
    fill_in "Place", with: @aquarium.place
    fill_in "Prefecture", with: @aquarium.prefecture
    fill_in "Reading", with: @aquarium.reading
    click_on "Update Aquarium"

    assert_text "Aquarium was successfully updated"
    click_on "Back"
  end

  test "destroying a Aquarium" do
    visit aquaria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aquarium was successfully destroyed"
  end
end
