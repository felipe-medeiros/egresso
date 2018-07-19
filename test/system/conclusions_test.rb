require "application_system_test_case"

class ConclusionsTest < ApplicationSystemTestCase
  setup do
    @conclusion = conclusions(:one)
  end

  test "visiting the index" do
    visit conclusions_url
    assert_selector "h1", text: "Conclusions"
  end

  test "creating a Conclusion" do
    visit conclusions_url
    click_on "New Conclusion"

    fill_in "Ano", with: @conclusion.ano
    fill_in "Semestre", with: @conclusion.semestre
    click_on "Create Conclusion"

    assert_text "Conclusion was successfully created"
    click_on "Back"
  end

  test "updating a Conclusion" do
    visit conclusions_url
    click_on "Edit", match: :first

    fill_in "Ano", with: @conclusion.ano
    fill_in "Semestre", with: @conclusion.semestre
    click_on "Update Conclusion"

    assert_text "Conclusion was successfully updated"
    click_on "Back"
  end

  test "destroying a Conclusion" do
    visit conclusions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conclusion was successfully destroyed"
  end
end
