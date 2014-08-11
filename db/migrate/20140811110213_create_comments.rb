class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :advert, index: true
      t.string :name

      t.timestamps
    end
  end
end
