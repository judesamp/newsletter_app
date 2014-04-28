class Remove < ActiveRecord::Migration
  def change
    remove_column :articles, :post_id, :integer
    remove_column :events, :post_id, :integer
  end
end
