class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.string :author
      t.string :email
      t.text :coment
      t.references :post

      t.timestamps
    end
    add_index :coments, :post_id
  end
end
