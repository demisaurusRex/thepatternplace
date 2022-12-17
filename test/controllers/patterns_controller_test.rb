require "test_helper"

class PatternsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get patterns_index_url
    assert_response :success
  end

  test "should get show" do
    get patterns_show_url
    assert_response :success
  end
end
