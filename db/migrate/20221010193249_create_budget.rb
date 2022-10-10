class CreateBudget < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.string :name, default: 'Budget name'
      t.decimal :amount, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
