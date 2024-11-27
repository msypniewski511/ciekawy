class CreateScannedTexts < ActiveRecord::Migration[7.1]
  def change
    create_table :scanned_texts do |t|
      t.text :content

      t.timestamps
    end
  end
end
