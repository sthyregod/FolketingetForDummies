require "test_helper"

class FeedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get feeds_index_url
    assert_response :success
  end

  test "should get new" do
    get feeds_new_url
    assert_response :success
  end

  test "should get create" do
    get feeds_create_url
    assert_response :success
  end

  test "should get show" do
    get feeds_show_url
    assert_response :success
  end

  test "should get edit" do
    get feeds_edit_url
    assert_response :success
  end

  test "should get update" do
    get feeds_update_url
    assert_response :success
  end

  test "should get destroy" do
    get feeds_destroy_url
    assert_response :success
  end
end
