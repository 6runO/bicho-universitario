class RemoveIfeFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :ife, :string
  end
end
