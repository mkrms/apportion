class CreateHours < ActiveRecord::Migration[7.0]
  def change
    create_table :hours do |t|
      t.time :mon_hour
      t.date :date
      t.text :memo

      t.timestamps
    end
  end
end
