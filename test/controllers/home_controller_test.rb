require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get indeex" do
    get home_indeex_url
    assert_response :success
  end
end
