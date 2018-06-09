class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.text :tagline
      t.string :abv
      t.string :tier
      t.text :description
      t.string :ibu
      t.string :image
      t.boolean :ontap

      t.timestamps
    end
  end
end
