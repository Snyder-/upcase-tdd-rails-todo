class AddEmailToTodo < ActiveRecord::Migration
  def self.up
    add_column :todos, :email, :string
  end

  def self.down
    remove_column :todos, :email
  end
end
