require 'test_helper'

class CreateCategoryTest < ActionDispatch::IntegrationTest
  setup do
    @admin_user= FactoryGirl.create(:user)
    sign_in_as(@admin_user)
  end

  test "getting teh new category form and create category" do
    get "/categories/new"
    assert_response :success 
    assert_difference "Category.count", 1 do
      post categories_path, params: {category: {name: "Sports1"}}
      assert_response :redirect
    end
    follow_redirect! 
    assert_response :success 
    assert_match "Sports", response.body
  end

  test "get new category form and reject invalid category submission" do
    get "/categories/new"
    assert_response :success 
    assert_no_difference "Category.count" do
      post categories_path, params: {category: {name: " "}}
    end
    assert_match "errors", response.body
    assert_select 'h2'
  end
end
