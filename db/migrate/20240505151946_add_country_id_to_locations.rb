class AddCountryIdToLocations < ActiveRecord::Migration[7.1]
  def change
    add_reference :locations, :Country, foreign_key: true, default: nil
  end
end
