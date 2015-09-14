class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
    	t.string "name"
    	t.integer "position"
    	t.boolean "visible", :default => false
    	t.string "content_type"
    	t.text "content"
    	t.integer "page_id"
      #t.timestamps null: false
      #add_index("sections", "name")
    end
  end

  def down
  	#remove_index("sections", "name")
  	drop_table :sections
  end
end
