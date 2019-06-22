class CreateResponsibles < ActiveRecord::Migration[5.2]
  def change
    create_table :responsibles do |t|
      t.string :cod
      t.string :name
      t.integer :status
      t.string :tel
      t.string :cel
      t.string :email

      t.timestamps
    end
  end
end
