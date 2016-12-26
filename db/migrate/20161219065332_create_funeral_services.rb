class CreateFuneralServices < ActiveRecord::Migration[5.0]
  def change
    create_table :funeral_services do |t|
    	t.string :name
    	t.timestamps
    end
  end
end
