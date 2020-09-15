class CreateDefinitions < ActiveRecord::Migration[6.0]
  def change
    create_table :definitions do |t|
      t.string :term
      t.text :body

      t.timestamps
    end
  end
end
