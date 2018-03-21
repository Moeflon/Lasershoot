class AddNameToPlayer < ActiveRecord::Migration
  def change
      change_table :players do |t|
          t.string :name
      end
  end
end
