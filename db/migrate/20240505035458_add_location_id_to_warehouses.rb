class AddLocationIdToWarehouses < ActiveRecord::Migration[7.1]
  def change
    add_reference :warehouses, :location, foreign_key: true, default: nil
  end
end
