class CreatePensions < ActiveRecord::Migration[5.0]
  def change
    create_table :pensions do |t|
      t.integer :will_id , :index => true
      t.integer :amount
      t.string :heir
      t.timestamps
    end
  end
end
