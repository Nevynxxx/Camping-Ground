class AddSeasonToScenario < ActiveRecord::Migration
  def change
    add_column :scenarios, :season, :integer
  end
end
