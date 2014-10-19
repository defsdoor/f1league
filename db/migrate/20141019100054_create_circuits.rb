class CreateCircuits < ActiveRecord::Migration
  def change
    create_table :circuits do |t|
      t.string :name, limit: 64, null: false, default: ''
      t.integer :circuit_type, limit: 1, null: false, default: 0
      t.integer :direction, limit: 1, null: false, default: 0
      t.string :location, limit: 128, null: false, default: ''
      t.decimal :current_length, precision: 3, scale: 6, null: false, default: 0.00
    end
  end
end
