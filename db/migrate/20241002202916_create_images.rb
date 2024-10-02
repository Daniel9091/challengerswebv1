class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.integer :project_id
      t.string :container

      t.timestamps
    end

    add_index :images, :project_id
  end
end
