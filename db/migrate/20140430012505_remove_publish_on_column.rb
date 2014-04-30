class RemovePublishOnColumn < ActiveRecord::Migration
  def change
  	remove_column :newsletter_issues, :publish_on
  end
end
