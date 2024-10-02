class CreateOrganizationTags < ActiveRecord::Migration[6.1]
  def change
    create_table :organization_tags do |t|
      t.integer :organization_id
      t.integer :tag_id

      t.timestamps
    end

    add_index :organization_tags, :organization_id
    add_index :organization_tags, :tag_id
    add_index :organization_tags, [:organization_id, :tag_id], unique: true
  end
end
