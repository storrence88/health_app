class AddGoalWeightColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :goal_weight, :decimal
  end
end
