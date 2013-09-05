class CreateLabNames < ActiveRecord::Migration
  def change
    create_table :lab_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
