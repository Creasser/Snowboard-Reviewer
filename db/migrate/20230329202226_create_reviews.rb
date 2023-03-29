class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :snowboard_id
      t.integer :rating
      t.string :comment
    end
  end
end
