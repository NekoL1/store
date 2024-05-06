class AddCategoryIdToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :category, foreign_key: true, default: nil
  end
end
