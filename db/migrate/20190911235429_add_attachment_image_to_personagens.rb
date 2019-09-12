class AddAttachmentImageToPersonagens < ActiveRecord::Migration[5.1]
  def self.up
    change_table :personagens do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :personagens, :image
  end
end
