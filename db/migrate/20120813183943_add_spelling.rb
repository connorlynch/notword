class AddSpelling < ActiveRecord::Migration
  
  def change
    add_column :words, :spelling, :string 
  end

end
