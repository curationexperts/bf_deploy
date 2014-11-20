# This migration comes from blacklight_folders (originally 20141016153710)
class CreateBlacklightFoldersFolders < ActiveRecord::Migration
  def change
    create_table :blacklight_folders_folders do |t|
      t.string :name
      t.references :user, null: false, polymorphic: true, index: true
      t.string :visibility

      t.timestamps
    end
  end
end
