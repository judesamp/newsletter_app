class FixEventIdColumn < ActiveRecord::Migration
  def change
  	change_column :posts, :event_id, :integer
  end
end
