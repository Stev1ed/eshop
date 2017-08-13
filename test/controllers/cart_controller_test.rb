require 'test_helper'

class CartControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get cart_controller_url
    assert_response :success
  end

end
