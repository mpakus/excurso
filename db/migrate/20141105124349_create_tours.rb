class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name
      t.text :description
      t.integer :state, default: 0, index: true
      t.references :city, index: true
      t.timestamps
    end
  end
end
