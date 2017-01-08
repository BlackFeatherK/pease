class AddUserInformation < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :name, :string
  	add_column :users, :birthday, :date
  	add_column :users, :gender, :string
    add_column :users, :funeral , :boolean, :default => false
    add_column :users, :medical , :boolean, :default => false
  	add_column :users, :tangible_asset, :boolean, :default => false
    add_column :users, :digital , :boolean, :default => false   
  end
end
