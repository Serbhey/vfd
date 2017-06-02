require 'test_helper'

class BuketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buket = bukets(:one)
  end

  test "should get index" do
    get bukets_url
    assert_response :success
  end

  test "should get new" do
    get new_buket_url
    assert_response :success
  end

  test "should create buket" do
    assert_difference('Buket.count') do
      post bukets_url, params: { buket: { description: @buket.description, price: @buket.price, title: @buket.title } }
    end

    assert_redirected_to buket_url(Buket.last)
  end

  test "should show buket" do
    get buket_url(@buket)
    assert_response :success
  end

  test "should get edit" do
    get edit_buket_url(@buket)
    assert_response :success
  end

  test "should update buket" do
    patch buket_url(@buket), params: { buket: { description: @buket.description, price: @buket.price, title: @buket.title } }
    assert_redirected_to buket_url(@buket)
  end

  test "should destroy buket" do
    assert_difference('Buket.count', -1) do
      delete buket_url(@buket)
    end

    assert_redirected_to bukets_url
  end
end
