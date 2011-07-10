class RemoveDescriptionFromPainting < ActiveRecord::Migration
  def self.up
    remove_column :paintings, :description
  end

  def self.down
    add_column :paintings, :description, :text
  end
end
