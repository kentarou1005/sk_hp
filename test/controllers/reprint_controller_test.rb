require 'test_helper'

class ReprintControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reprint_index_url
    assert_response :success
  end

end
