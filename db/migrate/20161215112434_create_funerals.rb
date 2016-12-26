class CreateFunerals < ActiveRecord::Migration[5.0]
  def change
    create_table :funerals do |t|
      t.integer :will_id , :index => true
      t.string :religion
      t.string :preference
      t.string :burial_arrangement
      t.string :body_arrangement
      t.text :other_arrangement
      t.timestamps
    end
  end
end
