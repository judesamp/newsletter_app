class AddOrganizationIdToNewsletterIssues < ActiveRecord::Migration
  def change
    add_column :newsletter_issues, :organization_id, :integer
  end
end
