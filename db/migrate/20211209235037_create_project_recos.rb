class CreateProjectRecos < ActiveRecord::Migration[6.1]
  def change
    create_table :project_recos do |t|

      t.timestamps
    end
  end
end
