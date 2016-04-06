class AddUserEmailToRegisteredApplication < ActiveRecord::Migration
  def change
    add_column :registered_applications, :user_email, :string
  end
end
