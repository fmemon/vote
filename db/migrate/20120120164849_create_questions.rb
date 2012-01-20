class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :body
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
