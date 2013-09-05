class CreateSubstrates < ActiveRecord::Migration
  def change
    create_table :substrates do |t|
      t.string :name

      t.timestamps
    end
  end
end
