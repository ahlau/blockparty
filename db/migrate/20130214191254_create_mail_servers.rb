class CreateMailServers < ActiveRecord::Migration
  def change
    create_table :mail_servers do |t|
      t.string :name
      t.string :ip
      t.text :description
      t.timestamps
    end
  end
end
