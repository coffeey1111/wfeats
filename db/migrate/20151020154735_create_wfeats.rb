class CreateWfeats < ActiveRecord::Migration
  def change
    create_table :wfeats do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
