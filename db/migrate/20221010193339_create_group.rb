class CreateGroup < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name, default: 'Group name'
      t.string :icon, default: "category-icon-placeholder"
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
