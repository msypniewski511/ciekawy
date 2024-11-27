require "test_helper"

class BarcodesControllerTest < ActionDispatch::IntegrationTest
  test "should get scan" do
    get barcodes_scan_url
    assert_response :success
  end
end
