class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string     :title,          null: false, default: ""
      t.integer    :category_id,    null: false
      t.text       :hypothesis,     null: false 
      t.text       :action
      t.text       :thought
      t.references :user,           null: false, foreign_key: true
      t.timestamps
    end
  end
end