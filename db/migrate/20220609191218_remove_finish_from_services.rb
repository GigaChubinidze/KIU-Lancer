class RemoveFinishFromServices < ActiveRecord::Migration[7.0]
  def change
    remove_column :services, :finish, :string
  end
end
