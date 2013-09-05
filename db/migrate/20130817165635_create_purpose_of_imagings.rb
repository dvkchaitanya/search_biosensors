class CreatePurposeOfImagings < ActiveRecord::Migration
  def change
    create_table :purpose_of_imagings do |t|
      t.string :name

      t.timestamps
    end
  end
end
