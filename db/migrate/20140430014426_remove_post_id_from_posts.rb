class RemovePostIdFromPosts < ActiveRecord::Migration
  def change
  	remove_column :posts, :event_id
  end
end
