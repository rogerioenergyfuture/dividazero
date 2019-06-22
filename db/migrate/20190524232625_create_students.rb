class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :cod
      t.string :name
      t.integer :status
      t.string :telemerg
      t.references :responsible, foreign_key: true

      t.timestamps
    end
  end
end
