class RemoveArticleIdFromPosts < ActiveRecord::Migration
  def change
  	remove_column :posts, :article_id
  end
end
