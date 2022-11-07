class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.string :content
      t.string :link
      t.datetime :published_at
      t.datetime :read_at
      t.belongs_to :channel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
