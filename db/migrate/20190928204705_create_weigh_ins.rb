class CreateWeighIns < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.decimal :weight

      t.timestamps
    end
  end
end
