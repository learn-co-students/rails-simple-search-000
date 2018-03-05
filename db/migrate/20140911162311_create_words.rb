class CreateWords < ActiveRecord::Migration
  create_table :words do |w|
    w.string :name
  end
end
