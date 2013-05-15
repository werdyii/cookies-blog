class AddAncestryToComent < ActiveRecord::Migration
  def change
    add_column :coments, :ancestry, :string
    add_index :coments, :ancestry
  end
end
