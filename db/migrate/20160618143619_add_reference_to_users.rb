class AddReferenceToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :part, index: true, foreign_key: true
    add_reference :users, :movie, index: true, foreign_key: true
  end
end
