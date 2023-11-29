class CreateClips < ActiveRecord::Migration[7.0]
  def change
    create_table :clips do |t|
      t.string :video_id, limit: 255, null: false
      t.string :title, limit: 255, null: false
      t.string :description, limit: 255
      t.date :date, null: false

      t.timestamps
    end
    add_index :clips, :video_id, unique: true
  end
end
