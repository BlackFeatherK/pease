class CreateDigitalAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :digital_assets do |t|
    	t.integer :will_id, index: true
		t.boolean :facebook_account
		t.string :facebook_account_treatment
		t.boolean :google_account
		t.string  :google_account_treatment
		t.string :google_account_content
		t.string :google_account_id
		t.string :google_account_password

		t.string :heir
		t.string :heir_email
      t.timestamps
    end
  end
end
