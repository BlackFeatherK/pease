class CreateInsurancePolicies < ActiveRecord::Migration[5.0]
  def change
    create_table :insurance_policies do |t|
      t.integer :will_id , :index => true
      t.string :insurer
      t.string :type
      t.integer :amount
      t.string :heir
      t.timestamps
    end
  end
end
