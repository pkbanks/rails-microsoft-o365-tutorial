class RenameSessionsTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :sessions_tables, :sessions
  end
end
