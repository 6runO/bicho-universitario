class RemoveDateFromAdocao < ActiveRecord::Migration[6.0]
  def change
    remove_column :adocaos, :data, :date
  end
end
