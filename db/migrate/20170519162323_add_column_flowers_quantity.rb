class AddColumnFlowersQuantity < ActiveRecord::Migration[5.0]
  def change
    add_column :bukets, :flowers_quantity, :integer
  end
end
