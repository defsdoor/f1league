class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :title, limit: 128, null: false, default: ''

    end
  end
end
