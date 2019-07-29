class AlterHold < ActiveRecord::Migration[5.2]
  def change
    remove_column :holds, :quantparcel, :integer 
    remove_column :holds, :dateparcel, :integer 
  end
end
