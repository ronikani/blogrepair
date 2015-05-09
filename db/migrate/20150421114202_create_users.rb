class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :instagram
      t.string :twitter
      t.string :vk
      t.string :cont_mail
      t.text :description

      t.timestamps null: false
    end
  end
end
