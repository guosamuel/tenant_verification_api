require 'test_helper'

class LandLordsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get land_lords_show_url
    assert_response :success
  end

  test "should get create" do
    get land_lords_create_url
    assert_response :success
  end

  test "should get update" do
    get land_lords_update_url
    assert_response :success
  end

  test "should get delete" do
    get land_lords_delete_url
    assert_response :success
  end

end
