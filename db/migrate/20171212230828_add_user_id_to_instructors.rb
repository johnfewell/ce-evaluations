class AddUserIdToInstructors < ActiveRecord::Migration[5.1]
  def change
    add_column :instructors, :user_id, :integer
  end
end
