class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :notes
      t.integer :institute_id

      t.timestamps
    end
  end
end
