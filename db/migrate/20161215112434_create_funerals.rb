class CreateFunerals < ActiveRecord::Migration[5.0]
  def change
    create_table :funerals do |t|
      t.integer :will_id , :index => true
      t.string :religion
      t.string :arrangement
      t.text :participants
      t.timestamps
    end
  end
end
