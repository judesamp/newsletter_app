class AddEventIdAndArticleIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :event_id, :integer
    add_column :posts, :article_id, :integer
  end
end
