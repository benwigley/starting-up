class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :body
      t.string :email

      t.timestamps
    end

    add_index :questions, :body
    add_index :questions, :email
  end
end
