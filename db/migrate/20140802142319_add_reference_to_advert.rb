class AddReferenceToAdvert < ActiveRecord::Migration
  def change
    add_reference :adverts, :admin, index: true
  end
end
