class AddImageToPreview < ActiveRecord::Migration[6.0]
  def change
    add_column :previews, :image, :string
  end
end
