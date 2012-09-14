# -*- encoding : utf-8 -*-
class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|

      t.timestamps
    end
  end
end
