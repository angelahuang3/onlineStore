class CreateManyLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :many_line_items do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
