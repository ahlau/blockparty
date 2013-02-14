class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer :mail_server_id
      t.integer :block_list_server_id
      t.string :url
      t.timestamps
    end
  end
end
