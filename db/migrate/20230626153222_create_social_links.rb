class CreateSocialLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :social_links do |t|
      t.string :svg
      t.string :backgroundColour
      t.string :platformName
      t.string :link

      t.timestamps
    end
  end
end
