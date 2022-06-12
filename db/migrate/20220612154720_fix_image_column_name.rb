class FixImageColumnName < ActiveRecord::Migration[7.0]
  def change
    change_table :services do |t|
      t.rename :image, :image_data
    end
  end
end
