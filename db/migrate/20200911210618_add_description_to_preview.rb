class AddDescriptionToPreview < ActiveRecord::Migration[6.0]
  def change
    add_column :previews, :description, :string
  end
end
