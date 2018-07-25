require 'test_helper'

class BriefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brief = briefs(:one)
  end

  test "should get index" do
    get briefs_url
    assert_response :success
  end

  test "should get new" do
    get new_brief_url
    assert_response :success
  end

  test "should create brief" do
    assert_difference('Brief.count') do
      post briefs_url, params: { brief: { student_id: @brief.student_id, texto: @brief.texto } }
    end

    assert_redirected_to brief_url(Brief.last)
  end

  test "should show brief" do
    get brief_url(@brief)
    assert_response :success
  end

  test "should get edit" do
    get edit_brief_url(@brief)
    assert_response :success
  end

  test "should update brief" do
    patch brief_url(@brief), params: { brief: { student_id: @brief.student_id, texto: @brief.texto } }
    assert_redirected_to brief_url(@brief)
  end

  test "should destroy brief" do
    assert_difference('Brief.count', -1) do
      delete brief_url(@brief)
    end

    assert_redirected_to briefs_url
  end
end
