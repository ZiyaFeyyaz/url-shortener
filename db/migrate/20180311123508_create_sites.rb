class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :origin_url, null: false
      t.string :short_path, null: false
      t.integer :usage_amount, null: false, default: 0

      t.timestamps
    end

    add_index :sites, :origin_url, unique: true
    add_index :sites, :short_path, unique: true
  end
end
