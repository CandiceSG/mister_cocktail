class AddAttachmentImageToCocktails < ActiveRecord::Migration
  def self.up
    change_table :cocktails do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :cocktails, :image
  end
end
