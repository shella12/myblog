class UpdateTheColumnsOfComments < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :author_id_id, :author_id
    rename_column :comments, :post_id_id, :post_id
  end
end
