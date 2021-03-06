require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  setup do
    @parent = parents(:one)
    bill = Teacher.create!(name: "bill", email: "bill@bill", password: "bill")
    session[:teacher_id] = bill.id
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_redirected_to sessions_login_path
  end

end
