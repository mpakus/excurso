class AddToursCountToCities < ActiveRecord::Migration
  def change
    add_column :cities, :tours_count, :integer, index: true
  end
end
