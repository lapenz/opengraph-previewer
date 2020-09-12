class AddTitleToPreview < ActiveRecord::Migration[6.0]
  def change
    add_column :previews, :title, :string
  end
end
