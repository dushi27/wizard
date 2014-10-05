class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :school
      t.string :twitter
      t.string :linkedin

      t.timestamps
    end
  end
end
