require 'test_helper'

class NewControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get new_controller_index_url
    assert_response :success
  end

  test "should get new" do
    get new_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get new_controller_create_url
    assert_response :success
  end

  test "should get update" do
    get new_controller_update_url
    assert_response :success
  end

  test "should get edit" do
    get new_controller_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get new_controller_destroy_url
    assert_response :success
  end

  test "should get show" do
    get new_controller_show_url
    assert_response :success
  end

end
