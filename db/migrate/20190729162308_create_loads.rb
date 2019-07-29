class CreateLoads < ActiveRecord::Migration[5.2]
  def change
    create_table :loads do |t|
      t.date :dateload
      t.integer :quantparcel
      t.integer :daypay
      t.references :hold, foreign_key: true

      t.timestamps
    end
  end
end
