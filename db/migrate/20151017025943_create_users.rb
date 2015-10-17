class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password
      t.string :sec_ques
      t.string :sec_ans

      t.timestamps null: false
    end
  end
end
