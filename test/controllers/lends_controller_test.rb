require 'test_helper'

class LendsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get lends_new_url
    assert_response :success
  end

  test "should get index" do
    get lends_index_url
    assert_response :success
  end

  test "should get show" do
    get lends_show_url
    assert_response :success
  end

end
