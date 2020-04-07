class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :employee
      t.string :title
      t.string :description
      t.string :priority
      t.string :state
      t.string :estimate

      t.timestamps
    end
  end
end
