class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :text
      t.references :questioner, foreign_key: { to_table: :politicians }
      t.references :recipient, foreign_key: { to_table: :politicians }

      t.timestamps
    end
  end
end
