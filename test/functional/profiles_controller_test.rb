require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: users(:jason).profile_name
    assert_response :success
    assert_template 'profiles/show'
  end
  
  test "should render 404 when profile not found" do
    get :show, id: "doesn't exist"
    assert_response :not_found
end

  test "that variables are assigned proper when get show page" do
  get :show, id: users(:jason).profile_name
  assert assigns(:user)
  assert_not_empty assigns(:statuses)
end

test "only show correct user's statues" do
  get :show, id: users(:jason).profile_name
  assigns(:statuses).each do |status|
    assert_equal users(:jason), status.user
  end
end
  
end
