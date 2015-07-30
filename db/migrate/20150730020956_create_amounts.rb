class CreateAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|
      t.integer :amount
      t.references :ingredient, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true
    end
  end
end
