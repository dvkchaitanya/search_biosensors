class CreateAnalysisTechniques < ActiveRecord::Migration
  def change
    create_table :analysis_techniques do |t|
      t.string :name

      t.timestamps
    end
  end
end
