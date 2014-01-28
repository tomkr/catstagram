class CreateCatsAndPictures < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name

      t.timestamps
    end

    create_table :pictures do |t|
      t.string :url

      t.timestamps
    end

    create_table :cats_pictures do |t|
      t.belongs_to :cat
      t.belongs_to :picture
    end
  end
end
