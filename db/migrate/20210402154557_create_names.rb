class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
      t.string :breed
      t.string :sound
      t.string :age
      t.string :gender
      t.string :coat_length
      t.string :size

      t.timestamps
    end
  end
end
