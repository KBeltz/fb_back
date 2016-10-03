require 'test_helper'

class FieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @field = fields(:one)
  end

  test "should get index" do
    get fields_url, as: :json
    assert_response :success
  end

  test "should create field" do
    assert_difference('Field.count') do
      post fields_url, params: { field: { field_name: @field.field_name, insert_by: @field.insert_by, insert_time: @field.insert_time, update_by: @field.update_by, update_time: @field.update_time } }, as: :json
    end

    assert_response 201
  end

  test "should show field" do
    get field_url(@field), as: :json
    assert_response :success
  end

  test "should update field" do
    patch field_url(@field), params: { field: { field_name: @field.field_name, insert_by: @field.insert_by, insert_time: @field.insert_time, update_by: @field.update_by, update_time: @field.update_time } }, as: :json
    assert_response 200
  end

  test "should destroy field" do
    assert_difference('Field.count', -1) do
      delete field_url(@field), as: :json
    end

    assert_response 204
  end
end
