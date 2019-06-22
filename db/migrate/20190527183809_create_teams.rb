class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :level
      t.integer :status
      t.integer :year
      t.integer :value_cents
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
