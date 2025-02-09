require "test_helper"

class SqlTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sql_template = sql_templates(:one)
  end

  test "should get index" do
    get sql_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_sql_template_url
    assert_response :success
  end

  test "should create sql_template" do
    assert_difference("SqlTemplate.count") do
      post sql_templates_url, params: { sql_template: { body: @sql_template.body, format: @sql_template.format, handler: @sql_template.handler, locale: @sql_template.locale, partial: @sql_template.partial, path: @sql_template.path } }
    end

    assert_redirected_to sql_template_url(SqlTemplate.last)
  end

  test "should show sql_template" do
    get sql_template_url(@sql_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_sql_template_url(@sql_template)
    assert_response :success
  end

  test "should update sql_template" do
    patch sql_template_url(@sql_template), params: { sql_template: { body: @sql_template.body, format: @sql_template.format, handler: @sql_template.handler, locale: @sql_template.locale, partial: @sql_template.partial, path: @sql_template.path } }
    assert_redirected_to sql_template_url(@sql_template)
  end

  test "should destroy sql_template" do
    assert_difference("SqlTemplate.count", -1) do
      delete sql_template_url(@sql_template)
    end

    assert_redirected_to sql_templates_url
  end
end
