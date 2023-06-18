class AddCtaLabeltoContentBlocks < ActiveRecord::Migration[7.0]
  def change
    add_column :content_blocks, :cta_label, :string
    add_column :content_blocks, :cta_link, :string
  end
end
