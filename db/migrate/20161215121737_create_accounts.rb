class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.integer :will_id , :index => true
      t.string :bank
      t.string :account_type
      t.string :heir
      t.timestamps
    end
  end
end
