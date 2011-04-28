class CreateFeatures < ActiveRecord::Migration
  def self.up
    create_table :features do |t|
      t.string :key
      t.integer :category_id
      t.timestamps
    end
  end

  def self.down
    drop_table :features
  end
end
