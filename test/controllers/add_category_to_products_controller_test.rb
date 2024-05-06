require "test_helper"

class AddCategoryToProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_category_to_product = add_category_to_products(:one)
  end

  test "should get index" do
    get add_category_to_products_url
    assert_response :success
  end

  test "should get new" do
    get new_add_category_to_product_url
    assert_response :success
  end

  test "should create add_category_to_product" do
    assert_difference("AddCategoryToProduct.count") do
      post add_category_to_products_url, params: { add_category_to_product: { category_id: @add_category_to_product.category_id } }
    end

    assert_redirected_to add_category_to_product_url(AddCategoryToProduct.last)
  end

  test "should show add_category_to_product" do
    get add_category_to_product_url(@add_category_to_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_category_to_product_url(@add_category_to_product)
    assert_response :success
  end

  test "should update add_category_to_product" do
    patch add_category_to_product_url(@add_category_to_product), params: { add_category_to_product: { category_id: @add_category_to_product.category_id } }
    assert_redirected_to add_category_to_product_url(@add_category_to_product)
  end

  test "should destroy add_category_to_product" do
    assert_difference("AddCategoryToProduct.count", -1) do
      delete add_category_to_product_url(@add_category_to_product)
    end

    assert_redirected_to add_category_to_products_url
  end
end
