require 'test_helper'

class AlertsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get alerts_new_url
    assert_response :success
  end

  test "should get create" do
    get alerts_create_url
    assert_response :success
  end

  test "should get edit" do
    get alerts_edit_url
    assert_response :success
  end

  test "should get update" do
    get alerts_update_url
    assert_response :success
  end

  test "should get delete" do
    get alerts_delete_url
    assert_response :success
  end

end
