class Create < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_posts, id: false do |t|
      t.belongs_to :post, null: false
      t.belongs_to :category, null: false
    end

    add_foreign_key :categories_posts, :posts
    add_foreign_key :categories_posts, :categories
  end
end
