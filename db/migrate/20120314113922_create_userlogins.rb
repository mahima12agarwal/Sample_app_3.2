class CreateUserlogins < ActiveRecord::Migration
  def change
    create_table :userlogins do |t|
      t.string :userName
      t.string :password

      t.timestamps
    end
  end
end
