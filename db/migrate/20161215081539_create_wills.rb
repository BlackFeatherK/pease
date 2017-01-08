class CreateWills < ActiveRecord::Migration[5.0]
  def change
    create_table :wills do |t|
      t.integer :user_id , :index => true
      t.boolean :tangible_asset
      t.boolean :intangible_asset
      t.boolean :personal_item
      t.boolean :afterlife_service
      t.boolean :digital
      t.timestamps
    end
  end
end
