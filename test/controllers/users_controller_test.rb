require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address_line_one: @user.address_line_one, address_line_two: @user.address_line_two, birthdate: @user.birthdate, city: @user.city, first_name: @user.first_name, gender: @user.gender, insert_by: @user.insert_by, insert_time: @user.insert_time, last_name: @user.last_name, middle_name: @user.middle_name, personal_phone: @user.personal_phone, ssn: @user.ssn, state: @user.state, unit_number: @user.unit_number, update_by: @user.update_by, update_time: @user.update_time, zip_code: @user.zip_code } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address_line_one: @user.address_line_one, address_line_two: @user.address_line_two, birthdate: @user.birthdate, city: @user.city, first_name: @user.first_name, gender: @user.gender, insert_by: @user.insert_by, insert_time: @user.insert_time, last_name: @user.last_name, middle_name: @user.middle_name, personal_phone: @user.personal_phone, ssn: @user.ssn, state: @user.state, unit_number: @user.unit_number, update_by: @user.update_by, update_time: @user.update_time, zip_code: @user.zip_code } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
