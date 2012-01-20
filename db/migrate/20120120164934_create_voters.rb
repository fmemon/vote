class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
