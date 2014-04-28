class RemoveColumnFromEvents < ActiveRecord::Migration
  def change
    remove_column :articles, :post_id, :integer
  end
end
