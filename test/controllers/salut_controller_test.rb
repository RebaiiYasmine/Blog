require "test_helper"

class SalutControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get salut_index_url
    assert_response :success
  end
end
