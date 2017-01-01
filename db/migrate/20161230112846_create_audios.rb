class CreateAudios < ActiveRecord::Migration[5.0]
  def change
    create_table :audios do |t|
      t.integer :will_id , :index => true
      t.boolean :heir
      t.string :name
      t.string :email
      t.text :content
      t.attachment :video
      t.timestamps
    end
  end
end
