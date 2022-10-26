class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.string :content
      t.string :link
      t.datetime :published_at
      t.datetime :read_at

      t.timestamps
    end
  end
end
