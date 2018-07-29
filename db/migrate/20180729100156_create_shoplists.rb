class CreateShoplists < ActiveRecord::Migration[5.1]
  def change
    create_table :shoplists do |t|
      t.string :content
      t.string :price

      t.timestamps
    end
  end
end
