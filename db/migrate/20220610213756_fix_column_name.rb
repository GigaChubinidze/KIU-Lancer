class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    change_table :services do |t|
      t.rename :type, :category
    end
  end
end
