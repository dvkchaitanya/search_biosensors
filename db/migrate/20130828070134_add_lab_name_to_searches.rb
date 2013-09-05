class AddLabNameToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :lab_name_ent, :string
  end
end
