require 'test_helper'

class PlanningsControllerTest < ActionDispatch::IntegrationTest
  test "should get my_activities" do
    get plannings_my_activities_url
    assert_response :success
  end

end
