class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :kind
      t.integer :status
      t.integer :predefaulting
      t.integer :posdefaulting
      t.string :prenotice
      t.string :postnotice
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
