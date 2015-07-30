class RenameAmountOnAmounts < ActiveRecord::Migration
  def change
    rename_column :amounts, :amount, :ounces
  end
end
