class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :statement
      t.references :course, foreign_key: true
      t.text :start_date
      t.text :end_date

      t.timestamps
    end
  end
end
