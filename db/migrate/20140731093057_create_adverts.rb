class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :title
      t.text :description
      t.string :name
      t.string :surname
      t.string :email
      t.string :mobile
      t.date :date
      t.boolean :active

      t.timestamps
    end
  end
end
