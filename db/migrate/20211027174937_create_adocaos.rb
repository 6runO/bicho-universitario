class CreateAdocaos < ActiveRecord::Migration[6.0]
  def change
    create_table :adocaos do |t|
      t.date :data
      t.references :bicho, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
