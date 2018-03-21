class CreateSessionsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions_tables do |t|
      t.string :session_id, :null => false
      t.text :data
      t.timestamps
    end
    add_index :sessions_tables, :session_id, :unique => true
    add_index :sessions_tables, :updated_at

  end
end
