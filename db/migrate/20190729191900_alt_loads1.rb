class AltLoads1 < ActiveRecord::Migration[5.2]
  def change
    remove_column :loads, :enviado   
    add_column :loads, :send, :integer   
  end
end
