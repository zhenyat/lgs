class CreateSpeechParts < ActiveRecord::Migration[7.1]
  def change
    create_table :speech_parts do |t|
      t.string :de, null: false, index: { unique: true }
      t.string :en, null: false, index: { unique: true }
      t.string :es, null: false, index: { unique: true }
      t.string :ru, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
