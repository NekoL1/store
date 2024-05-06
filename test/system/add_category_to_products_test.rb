require "application_system_test_case"

class AddCategoryToProductsTest < ApplicationSystemTestCase
  setup do
    @add_category_to_product = add_category_to_products(:one)
  end

  test "visiting the index" do
    visit add_category_to_products_url
    assert_selector "h1", text: "Add category to products"
  end

  test "should create add category to product" do
    visit add_category_to_products_url
    click_on "New add category to product"

    fill_in "Category", with: @add_category_to_product.category_id
    click_on "Create Add category to product"

    assert_text "Add category to product was successfully created"
    click_on "Back"
  end

  test "should update Add category to product" do
    visit add_category_to_product_url(@add_category_to_product)
    click_on "Edit this add category to product", match: :first

    fill_in "Category", with: @add_category_to_product.category_id
    click_on "Update Add category to product"

    assert_text "Add category to product was successfully updated"
    click_on "Back"
  end

  test "should destroy Add category to product" do
    visit add_category_to_product_url(@add_category_to_product)
    click_on "Destroy this add category to product", match: :first

    assert_text "Add category to product was successfully destroyed"
  end
end
