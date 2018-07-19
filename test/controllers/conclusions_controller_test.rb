require 'test_helper'

class ConclusionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conclusion = conclusions(:one)
  end

  test "should get index" do
    get conclusions_url
    assert_response :success
  end

  test "should get new" do
    get new_conclusion_url
    assert_response :success
  end

  test "should create conclusion" do
    assert_difference('Conclusion.count') do
      post conclusions_url, params: { conclusion: { ano: @conclusion.ano, semestre: @conclusion.semestre } }
    end

    assert_redirected_to conclusion_url(Conclusion.last)
  end

  test "should show conclusion" do
    get conclusion_url(@conclusion)
    assert_response :success
  end

  test "should get edit" do
    get edit_conclusion_url(@conclusion)
    assert_response :success
  end

  test "should update conclusion" do
    patch conclusion_url(@conclusion), params: { conclusion: { ano: @conclusion.ano, semestre: @conclusion.semestre } }
    assert_redirected_to conclusion_url(@conclusion)
  end

  test "should destroy conclusion" do
    assert_difference('Conclusion.count', -1) do
      delete conclusion_url(@conclusion)
    end

    assert_redirected_to conclusions_url
  end
end
