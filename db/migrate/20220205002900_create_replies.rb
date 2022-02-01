class CreateReplies < ActiveRecord::Migration[7.0]
  def change
    create_table :replies do |t|
      t.string :author
      t.text :body
      t.belongs_to :comment, null: false

      t.timestamps
    end
  end
end
