class CreateBlockListServers < ActiveRecord::Migration
  def change
    create_table :block_list_servers do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
