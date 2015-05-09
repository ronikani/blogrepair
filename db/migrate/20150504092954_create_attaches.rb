class CreateAttaches < ActiveRecord::Migration
  def change
    create_table :attaches do |t|
      t.belongs_to :attacheable, :polymorphic => true
      t.string :file_name
      t.string :content_type
      t.integer :file_size

      t.timestamps null: false
    end
    add_index :attaches, :attacheable_id
  end
end
