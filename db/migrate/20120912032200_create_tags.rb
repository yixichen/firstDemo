# -*- encoding : utf-8 -*-
class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :blog

      t.timestamps
    end
    add_index :tags, :blog_id
  end
end
