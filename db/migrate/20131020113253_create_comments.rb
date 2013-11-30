class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :writer
      t.text :text
      t.integer :tweet_id
      t.timestamps
    end
  end
end
