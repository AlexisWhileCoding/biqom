class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.references :activity, null: false, foreign_key: true
      t.integer :duration
      t.string :name
      t.string :content
      t.string :source
      t.integer :position

      t.timestamps
    end
  end
end
