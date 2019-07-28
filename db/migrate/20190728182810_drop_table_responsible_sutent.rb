class DropTableResponsibleSutent < ActiveRecord::Migration[5.2]
  def change
    drop_table :students 
    drop_table :responsibles
       
  end
end
