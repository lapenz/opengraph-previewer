class AddOgtypeToPreview < ActiveRecord::Migration[6.0]
  def change
    add_column :previews, :ogtype, :string
  end
end
