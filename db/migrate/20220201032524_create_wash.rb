class CreateWash < ActiveRecord::Migration[5.2]
  def change
    create_table :washes do |t|
      t.string :title

      t.timestamps
    end
  end
end
