class FixArticleIdColumn < ActiveRecord::Migration
  def change
  	change_column :posts, :article_id, :integer
  end
end
