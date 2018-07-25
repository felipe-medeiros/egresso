require "application_system_test_case"

class BriefsTest < ApplicationSystemTestCase
  setup do
    @brief = briefs(:one)
  end

  test "visiting the index" do
    visit briefs_url
    assert_selector "h1", text: "Briefs"
  end

  test "creating a Brief" do
    visit briefs_url
    click_on "New Brief"

    fill_in "Student", with: @brief.student_id
    fill_in "Texto", with: @brief.texto
    click_on "Create Brief"

    assert_text "Brief was successfully created"
    click_on "Back"
  end

  test "updating a Brief" do
    visit briefs_url
    click_on "Edit", match: :first

    fill_in "Student", with: @brief.student_id
    fill_in "Texto", with: @brief.texto
    click_on "Update Brief"

    assert_text "Brief was successfully updated"
    click_on "Back"
  end

  test "destroying a Brief" do
    visit briefs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Brief was successfully destroyed"
  end
end
