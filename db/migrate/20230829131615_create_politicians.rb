class CreatePoliticians < ActiveRecord::Migration[7.0]
  def change
    create_table :politicians do |t|
      t.string :firstname
      t.string :lastname
      t.integer :party
      t.string :sex
      t.date :birthday

      t.timestamps
    end
  end
end
