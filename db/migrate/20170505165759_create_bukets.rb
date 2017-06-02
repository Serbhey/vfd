class CreateBukets < ActiveRecord::Migration[5.0]
  def change
    create_table :bukets do |t|
      t.string :title
      t.text :description
      t.text :flowers
      t.decimal :price
      t.decimal :flower_num
      t.timestamps
    end
  end
end
