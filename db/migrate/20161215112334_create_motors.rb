class CreateMotors < ActiveRecord::Migration[5.0]
  def change
    create_table :motors do |t|
      t.integer :will_id , :index => true
      t.string :number
      t.timestamps
    end
  end
end
