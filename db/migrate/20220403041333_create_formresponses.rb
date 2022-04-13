class CreateFormresponses < ActiveRecord::Migration[6.1]
  def change
    create_table :formresponses do |t|
      t.string :full_name
      t.string :uin
      t.string :tamu_email
      t.string :gpa
      t.string :resume_url
      t.string :acknowledgement
      t.string :project_assigned
      t.timestamps
    end
  end
end
