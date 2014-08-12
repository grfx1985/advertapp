class AddAttributeToAdvert < ActiveRecord::Migration
  def change
    add_column :adverts, :job_hunt, :boolean
    add_column :adverts, :buy, :boolean
    add_column :adverts, :sell, :boolean
    add_column :adverts, :hire, :boolean
    add_column :adverts, :exchange, :boolean
  end
end
