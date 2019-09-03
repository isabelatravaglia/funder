require 'test_helper'

class ScholarshipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scholarships_index_url
    assert_response :success
  end

end
