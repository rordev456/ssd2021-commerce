class AddStatusToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :status, :integer, default: 0
  end
end
