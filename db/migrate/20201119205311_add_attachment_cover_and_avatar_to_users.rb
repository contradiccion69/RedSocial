class AddAttachmentCoverAndAvatarToUsers < ActiveRecord::Migration[6.0]
  def change
    add_attachment :users, :avatar
    add_attachment :users, :cover
  end
end
