class CreateMedicals < ActiveRecord::Migration[5.0]
  def change
    create_table :medicals do |t|
    	t.integer :will_id, index: true
    	t.boolean :futile_medical
    	t.boolean :organ_donation
      t.timestamps
    end
  end
end
