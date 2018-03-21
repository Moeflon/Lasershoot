class AddCodeToGame < ActiveRecord::Migration
  def change
      change_table :games do |t|
          t.string :code
      end
  end
end
