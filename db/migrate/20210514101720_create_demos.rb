class CreateDemos < ActiveRecord::Migration[6.1]
  def change
    create_table :demos do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
