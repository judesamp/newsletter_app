class CreateNewsletterIssues < ActiveRecord::Migration
  def change
    create_table :newsletter_issues do |t|
      t.string :title
      t.integer :number
      t.string :status
      t.date :publish_on
      t.date :publish_date
      t.integer :organization_id

      t.timestamps
    end
  end
end
