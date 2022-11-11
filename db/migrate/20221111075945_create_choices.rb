class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.string :result, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
