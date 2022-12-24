class AddKeyToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :key, :integer
  end
end
