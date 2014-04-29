class FixNewsletterIdColumn < ActiveRecord::Migration
  def change
  	change_column :posts, :newsletter_issue_id, :integer
  end
end
