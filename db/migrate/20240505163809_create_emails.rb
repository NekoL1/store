class CreateEmails < ActiveRecord::Migration[7.1]
  def change
    create_table :emails do |t|
      t.string :address
      t.references :user, foreign_key: true, default: nil

      t.timestamps
    end
  end
end
