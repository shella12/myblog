class AddReferencesToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :author_id, foreign_key:  { to_table: :users }
    add_reference :comments, :post_id, foreign_key:  { to_table: :posts }
  end
end
