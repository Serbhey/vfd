class AddArrivalDateToBukets < ActiveRecord::Migration[5.0]
  def change
    add_column :bukets, :arrival_date, :datetime, :flowers, :flower_num



end
end