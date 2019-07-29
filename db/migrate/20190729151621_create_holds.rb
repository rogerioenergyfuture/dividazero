class CreateHolds < ActiveRecord::Migration[5.2]
  def change
    create_table :holds do |t|
      t.string :code
      t.string :name
      t.string :mobile
      t.string :email
      t.integer :status
      t.integer :predefaulting
      t.integer :quantparcel
      t.string :dateparcel
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
