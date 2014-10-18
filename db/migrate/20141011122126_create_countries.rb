class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, limit: 64, null: false, default: ''
      t.string :nationality, limit: 64, null: false, default: false
    end
  end
end
