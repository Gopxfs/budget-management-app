class CreateGroup < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name, default: 'Group name'
      t.string :icon, default: "app/assets/images/category-icon-placeholder.png"

      t.timestamps
    end
  end
end
