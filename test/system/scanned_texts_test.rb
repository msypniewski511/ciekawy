require "application_system_test_case"

class ScannedTextsTest < ApplicationSystemTestCase
  setup do
    @scanned_text = scanned_texts(:one)
  end

  test "visiting the index" do
    visit scanned_texts_url
    assert_selector "h1", text: "Scanned texts"
  end

  test "should create scanned text" do
    visit scanned_texts_url
    click_on "New scanned text"

    fill_in "Content", with: @scanned_text.content
    click_on "Create Scanned text"

    assert_text "Scanned text was successfully created"
    click_on "Back"
  end

  test "should update Scanned text" do
    visit scanned_text_url(@scanned_text)
    click_on "Edit this scanned text", match: :first

    fill_in "Content", with: @scanned_text.content
    click_on "Update Scanned text"

    assert_text "Scanned text was successfully updated"
    click_on "Back"
  end

  test "should destroy Scanned text" do
    visit scanned_text_url(@scanned_text)
    click_on "Destroy this scanned text", match: :first

    assert_text "Scanned text was successfully destroyed"
  end
end
