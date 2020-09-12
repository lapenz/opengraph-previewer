class CreatePreviews < ActiveRecord::Migration[6.0]
  def change
    create_table :previews do |t|
      t.string :url

      t.timestamps
    end
  end
end
