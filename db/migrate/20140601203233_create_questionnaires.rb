class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.integer :user_id
      t.integer :respondent_id

      t.timestamps

    end
  end
end
