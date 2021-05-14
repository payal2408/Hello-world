class CreateUses < ActiveRecord::Migration[6.1]
  def change
    create_table :uses do |t|
      t.string :name
      t.string :email
      t.string :login

      t.timestamps
    end
  end
end
