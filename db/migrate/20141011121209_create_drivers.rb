class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :forename, limit: 32, null: false, default: ''
      t.string :surname, limit: 32, null: false, default: ''
      t.string :display_name, limit: 64, null: false, default: ''
      t.date :born_on, null: false, default: '1970/01/01'
      t.references :country
    end

    add_index :drivers, :country_id
  end
end
