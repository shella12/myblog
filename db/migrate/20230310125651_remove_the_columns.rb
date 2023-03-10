class RemoveTheColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :author_id_id
    remove_column :comments, :post_id_id
    add_reference :comments, :author_id, foreign_key:  { to_table: :users }
    add_reference :comments, :post_id, foreign_key:  { to_table: :posts }
  end
end
