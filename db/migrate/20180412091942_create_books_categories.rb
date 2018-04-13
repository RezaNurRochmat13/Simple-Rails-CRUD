class CreateBooksCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :books_categories, { :primary_key => :id_category } do |t|
      t.string  :category_name
      t.string  :category_description

      t.timestamps
    end
  end
end
