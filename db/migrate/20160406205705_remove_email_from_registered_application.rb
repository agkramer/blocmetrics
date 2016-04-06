class RemoveEmailFromRegisteredApplication < ActiveRecord::Migration
  def change
    remove_column :registered_applications, :email, :string
  end
end
