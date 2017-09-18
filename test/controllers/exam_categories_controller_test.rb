require 'test_helper'

class ExamCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exam_category = exam_categories(:one)
  end

  test "should get index" do
    get exam_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_exam_category_url
    assert_response :success
  end

  test "should create exam_category" do
    assert_difference('ExamCategory.count') do
      post exam_categories_url, params: { exam_category: { description: @exam_category.description, name: @exam_category.name } }
    end

    assert_redirected_to exam_category_url(ExamCategory.last)
  end

  test "should show exam_category" do
    get exam_category_url(@exam_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_exam_category_url(@exam_category)
    assert_response :success
  end

  test "should update exam_category" do
    patch exam_category_url(@exam_category), params: { exam_category: { description: @exam_category.description, name: @exam_category.name } }
    assert_redirected_to exam_category_url(@exam_category)
  end

  test "should destroy exam_category" do
    assert_difference('ExamCategory.count', -1) do
      delete exam_category_url(@exam_category)
    end

    assert_redirected_to exam_categories_url
  end
end
