class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.string :description
      t.string :website

      t.timestamps
    end
  end
end