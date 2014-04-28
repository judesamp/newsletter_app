class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.date :event_start_date
      t.date :event_end_date
      t.date :expire_on

      t.timestamps
    end
  end
end
