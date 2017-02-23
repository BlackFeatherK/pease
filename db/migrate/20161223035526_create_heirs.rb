class CreateHeirs < ActiveRecord::Migration[5.0]
  def change
    create_table :heirs do |t|
      t.string :heir_type
      t.string :name
      t.string :email
      t.integer  :proportion
      t.belongs_to :heirtable, polymorphic: true
      
      t.timestamps
    end
  end
end
