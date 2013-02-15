class CreateQueryResults < ActiveRecord::Migration
  
  def change
    create_table :query_results do |t|
      t.integer :query_id
      t.string :response
      t.integer :code
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
