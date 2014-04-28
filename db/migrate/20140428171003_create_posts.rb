class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :position
      t.string :newsletter_issue_id
      t.string :article_id
      t.string :event_id

      t.timestamps
    end
  end
end
