class AddPhotoToDrivers < ActiveRecord::Migration
  def up
    add_attachment :drivers, :photo
  end

  def down
    add_attachment :drivers, :photo
  end

end
