require 'test_helper'

class TemplateFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @template_field = template_fields(:one)
  end

  test "should get index" do
    get template_fields_url, as: :json
    assert_response :success
  end

  test "should create template_field" do
    assert_difference('TemplateField.count') do
      post template_fields_url, params: { template_field: { field_id: @template_field.field_id, insert_by: @template_field.insert_by, insert_time: @template_field.insert_time, order_num: @template_field.order_num, template_id: @template_field.template_id, update_by: @template_field.update_by, update_time: @template_field.update_time } }, as: :json
    end

    assert_response 201
  end

  test "should show template_field" do
    get template_field_url(@template_field), as: :json
    assert_response :success
  end

  test "should update template_field" do
    patch template_field_url(@template_field), params: { template_field: { field_id: @template_field.field_id, insert_by: @template_field.insert_by, insert_time: @template_field.insert_time, order_num: @template_field.order_num, template_id: @template_field.template_id, update_by: @template_field.update_by, update_time: @template_field.update_time } }, as: :json
    assert_response 200
  end

  test "should destroy template_field" do
    assert_difference('TemplateField.count', -1) do
      delete template_field_url(@template_field), as: :json
    end

    assert_response 204
  end
end
