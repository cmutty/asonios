class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.text :description
      t.string :imageurl
      t.integer :itunesid

      t.timestamps
    end
  end
end
