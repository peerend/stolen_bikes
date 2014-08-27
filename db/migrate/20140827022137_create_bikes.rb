class CreateBikes < ActiveRecord::Migration
  def change

    create_table :bikes do |t|
      t.string :name
      t.string :serial
      t.string :description

      t.belongs_to :location

      t.timestamps
    end

    create_table :locations do |t|
      t.string :neighborhood

      t.timestamps
    end
  end
end
