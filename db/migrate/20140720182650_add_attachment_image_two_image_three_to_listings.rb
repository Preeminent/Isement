class AddAttachmentImageTwoImageThreeToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :image_two
      t.attachment :image_three
    end
  end

  def self.down
    drop_attached_file :listings, :image_two
    drop_attached_file :listings, :image_three
  end
end
