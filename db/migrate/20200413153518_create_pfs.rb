class CreatePfs < ActiveRecord::Migration[5.2]
  def change
    create_table :pfs do |t|
      t.string :name
      t.integer :pfamount
    end
  end
end
