class AddCountryInLoaction < ActiveRecord::Migration[7.1]
  def change
    add_reference :locations, :country, foreign_key: true, default:nil
  end
end
