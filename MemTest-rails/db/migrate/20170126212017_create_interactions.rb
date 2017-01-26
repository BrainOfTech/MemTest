class CreateInteractions < ActiveRecord::Migration[5.0]
  def change
    create_table :interactions do |t|
      t.references :question, foreign_key: true
      t.integer :response
      t.datetime :prompt_time
      t.integer :thinking_milis

      t.timestamps
    end
  end
end
