class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |t|
    	t.string "name"
    	t.integer "permalink"
    	t.integer "position"
    	t.boolean "visible", :default => false
    	t.integer "subject_id"

      #t.timestamps null: false
    end
  end

  def down
  	drop_table :pages
  end

end
