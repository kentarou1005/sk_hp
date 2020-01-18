require 'test_helper'

class LectureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lecture_index_url
    assert_response :success
  end

end
