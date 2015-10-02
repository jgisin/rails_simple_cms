class CreateIndex < ActiveRecord::Migration
  def up
  	add_index("sections", "page_id")
  	add_index("pages", "subject_id")  
  	add_index("pages", "permalink")
  end


  def down
  	#remove_index("pages", "permalink")
  	#remove_index("pages", "subjects_id")
  	#remove_index("sections", "pages_id")
  end

end
