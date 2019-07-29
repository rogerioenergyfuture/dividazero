class AltLoads < ActiveRecord::Migration[5.2]
  def change
    add_column :loads, :enviado, :boolean 
  end
end
