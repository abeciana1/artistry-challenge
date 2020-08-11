class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.belongs_to :artist
      t.belongs_to :instrument
      t.timestamps
    end
  end
end
