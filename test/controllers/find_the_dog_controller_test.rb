require 'test_helper'

class FindTheDogControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get find_the_dog_landing_url
    assert_response :success
  end

  test "should get questions" do
    get find_the_dog_questions_url
    assert_response :success
  end

  test "should get result" do
    get find_the_dog_result_url
    assert_response :success
  end

end
