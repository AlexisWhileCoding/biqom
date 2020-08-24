require 'test_helper'

class UserChallengesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_challenges_index_url
    assert_response :success
  end

  test "should get edit" do
    get user_challenges_edit_url
    assert_response :success
  end

end
