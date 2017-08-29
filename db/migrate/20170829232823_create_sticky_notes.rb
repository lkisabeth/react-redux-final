class CreateStickyNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :sticky_notes do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
