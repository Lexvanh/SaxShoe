require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get zorgvragers" do
    get patients_zorgvragers_url
    assert_response :success
  end

end
