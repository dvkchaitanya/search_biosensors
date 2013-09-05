class ChangeLabNameDataTypeInSearch < ActiveRecord::Migration
  def up
	change_column(:searches,:lab_name_ent, :integer)
  end

  def down
	change_column(:searches,:lab_name_ent, :string)
  end
end
