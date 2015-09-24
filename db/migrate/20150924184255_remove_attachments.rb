class RemoveAttachments < ActiveRecord::Migration
  def change
    remove_index :refile_attachments, :namespace
    drop_table :refile_attachments
    remove_column :gifs, :file_id
  end
end
