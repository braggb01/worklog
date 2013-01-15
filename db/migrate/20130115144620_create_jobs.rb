class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.date :install_date
      t.references :entity
      t.references :location
      t.string :floor
      t.references :product
      t.references :user
      t.text :comment

      t.timestamps
    end
    add_index :jobs, :entity_id
    add_index :jobs, :location_id
    add_index :jobs, :product_id
    add_index :jobs, :user_id
  end
end
