class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.boolean :started
      t.timestamps null: false
    end
  end
end