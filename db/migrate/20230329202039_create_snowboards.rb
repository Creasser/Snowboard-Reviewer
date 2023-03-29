class CreateSnowboards < ActiveRecord::Migration[6.1]
  def change
    create_table :snowboards do |t|
      t.string :brand
      t.integer :price
      t.string :preferred_riding
      t.boolean :directional
      t.string :image_url
    end
  end
end
