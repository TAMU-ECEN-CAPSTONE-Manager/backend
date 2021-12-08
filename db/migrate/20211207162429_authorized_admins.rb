class AuthorizedAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :email
    end
  end
end
