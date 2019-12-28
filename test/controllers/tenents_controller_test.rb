require 'test_helper'

class TenentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tenents_show_url
    assert_response :success
  end

  test "should get create" do
    get tenents_create_url
    assert_response :success
  end

  test "should get update" do
    get tenents_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tenents_destroy_url
    assert_response :success
  end

end
