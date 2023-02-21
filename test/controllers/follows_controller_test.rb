require "test_helper"

class FollowsControllerTest < ActionDispatch::IntegrationTest
  test "should get follow" do
    get follows_follow_url
    assert_response :success
  end

  test "should get unfollow" do
    get follows_unfollow_url
    assert_response :success
  end
end
