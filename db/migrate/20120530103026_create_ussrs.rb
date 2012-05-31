class CreateUssrs < ActiveRecord::Migration
  def change
    create_table :ussrs do |t|
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
