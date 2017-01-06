require 'test_helper'

class EnquiryControllerTest < ActionController::TestCase
  test "should get enquiryform" do
    get :enquiryform
    assert_response :success
  end

end
