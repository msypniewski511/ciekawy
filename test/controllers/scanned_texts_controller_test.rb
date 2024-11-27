require "test_helper"

class ScannedTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scanned_text = scanned_texts(:one)
  end

  test "should get index" do
    get scanned_texts_url
    assert_response :success
  end

  test "should get new" do
    get new_scanned_text_url
    assert_response :success
  end

  test "should create scanned_text" do
    assert_difference("ScannedText.count") do
      post scanned_texts_url, params: { scanned_text: { content: @scanned_text.content } }
    end

    assert_redirected_to scanned_text_url(ScannedText.last)
  end

  test "should show scanned_text" do
    get scanned_text_url(@scanned_text)
    assert_response :success
  end

  test "should get edit" do
    get edit_scanned_text_url(@scanned_text)
    assert_response :success
  end

  test "should update scanned_text" do
    patch scanned_text_url(@scanned_text), params: { scanned_text: { content: @scanned_text.content } }
    assert_redirected_to scanned_text_url(@scanned_text)
  end

  test "should destroy scanned_text" do
    assert_difference("ScannedText.count", -1) do
      delete scanned_text_url(@scanned_text)
    end

    assert_redirected_to scanned_texts_url
  end
end
