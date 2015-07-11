require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  test "user dashboard" do 
  	user = FactoryGirl.create(:user)
  	sign_in user

  	get :show, :id => user.id
  	assert_response :success
  end

  test "fail to show dashboard" do
    get :show, :id => 'wth'
    assert_response :not_found
  end

  # test "the truth" do
  #   assert true
  # end
end
