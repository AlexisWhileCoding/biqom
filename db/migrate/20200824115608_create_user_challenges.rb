class CreateUserChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :user_challenges do |t|
      t.references :planning, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true
      t.string :status
      t.time :start_time

      t.timestamps
    end
  end
end
