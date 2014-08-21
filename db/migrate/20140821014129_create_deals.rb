class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.text :description
      t.float :number
      t.decimal :price

      t.timestamps
    end
  end
end
