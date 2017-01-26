class CreateAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :associations do |t|
      t.string :label
      t.string :content

      t.timestamps
    end
  end
end
