class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books, { :primary_key => :id_books } do |t|
      t.belongs_to :books_categories, index: true
      t.string  :books_name
      t.string  :books_writer
      t.string  :books_publisher
      t.string  :books_description

      t.timestamps
    end
  end
end
