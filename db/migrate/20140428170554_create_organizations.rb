class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :street_adress
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :newsletter_title
      t.string :status

      t.timestamps
    end
  end
end
