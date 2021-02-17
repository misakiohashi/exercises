class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :year
      t.integer :number
      t.string :sentence
      t.integer :answer
      t.text :text
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
