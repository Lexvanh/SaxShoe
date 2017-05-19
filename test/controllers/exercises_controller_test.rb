require 'test_helper'

class ExercisesControllerTest < ActionDispatch::IntegrationTest
  test "should get oefeningen" do
    get exercises_oefeningen_url
    assert_response :success
  end

end
