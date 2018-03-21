class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :code
      t.boolean :alive
      t.timestamps null: false
      t.references :game
    end
  end
end
