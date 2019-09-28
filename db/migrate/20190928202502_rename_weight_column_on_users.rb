class RenameWeightColumnOnUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :weight, :starting_weight
  end
end
