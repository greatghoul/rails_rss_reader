class CreateChannels < ActiveRecord::Migration[7.0]
  def change
    create_table :channels do |t|
      t.string :title
      t.string :description
      t.string :link
      t.string :xml_link
      t.datetime :fetched_at
      t.integer :category_id

      t.timestamps
    end
  end
end
