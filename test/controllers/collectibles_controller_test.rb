require "test_helper"

class CollectiblesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get collectibles_show_url
    assert_response :success
  end
end
