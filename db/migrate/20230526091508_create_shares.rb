class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.string     :title,          null: false, default: ""
      t.integer    :category_id,    null: false
      t.text       :guess,          null: false 
      t.text       :solution,       null: false
      t.text       :thought,        null: false
      t.references :user,           null: false, foreign_key: true
      t.timestamps
    end
  end
end