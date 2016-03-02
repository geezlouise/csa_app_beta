class AddValuesToBoxes < ActiveRecord::Migration
  def change
    add_column :boxes, :size, :string
    add_column :boxes, :weight, :float
  end
end
