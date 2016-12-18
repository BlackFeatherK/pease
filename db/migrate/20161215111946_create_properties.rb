class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.integer :will_id , :index => true
      t.string :address
      t.string :heir
      t.timestamps
    end
  end
end
