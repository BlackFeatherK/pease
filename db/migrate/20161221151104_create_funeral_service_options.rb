class CreateFuneralServiceOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :funeral_service_options do |t|
    	t.integer :funeral_id, index: true
    	t.integer :funeral_service_id, index: true
	    t.timestamps
    end
  end
end
