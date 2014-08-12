class AddAttachmentImage1Image2Image3ToAdverts < ActiveRecord::Migration
  def self.up
    change_table :adverts do |t|
      t.attachment :image1
      t.attachment :image2
      t.attachment :image3
    end
  end

  def self.down
    remove_attachment :adverts, :image1
    remove_attachment :adverts, :image2
    remove_attachment :adverts, :image3
  end
end
