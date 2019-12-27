class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :state
      t.references :vertical, null: false, foreign_key: true

      t.timestamps
    end
  end
end
