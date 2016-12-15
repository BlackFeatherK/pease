class CreateWills < ActiveRecord::Migration[5.0]
  def change
    create_table :wills do |t|
      t.integer :user_id , :index => true
      t.timestamps
    end
  end
end
