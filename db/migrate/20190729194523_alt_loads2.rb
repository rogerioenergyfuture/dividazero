class AltLoads2 < ActiveRecord::Migration[5.2]
  def change
    remove_column :loads, :send 
    add_column :loads, :psend, :integer       
  end
end
