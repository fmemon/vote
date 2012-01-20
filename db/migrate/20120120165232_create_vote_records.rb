class CreateVoteRecords < ActiveRecord::Migration
  def change
    create_table :vote_records do |t|
      t.integer :voter_id
      t.integer :question_id
      t.boolean :is_yes

      t.timestamps
    end
  end
end
