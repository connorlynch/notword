class AddCurated < ActiveRecord::Migration

  def change
    add_column :words, :curated, :boolean, :default => false
  end

end
