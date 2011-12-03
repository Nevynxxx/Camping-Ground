class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.string :name
      t.integer :author_id
      t.integer :number

      t.timestamps
    end
  end
end
