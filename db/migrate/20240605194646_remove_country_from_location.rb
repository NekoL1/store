class RemoveCountryFromLocation < ActiveRecord::Migration[7.1]
  def change
    remove_column :locations, :Country_id
  end
end
