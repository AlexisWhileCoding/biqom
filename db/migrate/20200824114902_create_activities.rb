class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.string :type
      t.integer :days

      t.timestamps
    end
  end
end
