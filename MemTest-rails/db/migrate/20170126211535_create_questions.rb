class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :prompt
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.string :choice4
      t.integer :correctIndex

      t.timestamps
    end
  end
end
