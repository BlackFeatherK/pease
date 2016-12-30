class AddUserInformation < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :name, :string
  	add_column :users, :birthday, :date
  	add_column :users, :gender, :string
  	add_column :users, :tangible_asset, :boolean
  	add_column :users, :intangible_asset , :boolean
    add_column :users, :personal_item , :boolean
    add_column :users, :afterlife_service , :boolean
    add_column :users, :digital , :boolean
    add_column :users, :medical , :boolean
    add_attachment :users, :audio
  end
end
