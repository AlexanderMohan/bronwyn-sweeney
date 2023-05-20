class CreateContentBlocks < ActiveRecord::Migration[7.0]
  def change
    create_table :content_blocks do |t|
      t.string :title
      t.text :body
      t.string :alias

      t.timestamps
    end
  end
end
