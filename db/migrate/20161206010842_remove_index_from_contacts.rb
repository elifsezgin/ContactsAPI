class RemoveIndexFromContacts < ActiveRecord::Migration
  def change
    remove_index :contacts, :name => "index_contacts_on_user_id_and_email"
  end
end
