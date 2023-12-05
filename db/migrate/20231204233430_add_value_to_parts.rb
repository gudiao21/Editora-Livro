class AddValueToParts < ActiveRecord::Migration[7.0]
  def change
    add_column :parts, :value, :decimal
  end
end
