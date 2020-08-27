class CreatePlannings < ActiveRecord::Migration[6.0]
  def change
    create_table :plannings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.time :start_time
      t.date :start_date
      t.string :status

      t.timestamps
    end
  end
end
