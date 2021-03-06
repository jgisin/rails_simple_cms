class Section < ActiveRecord::Base

	has_many :section_edits
	has_many :editors, :through => :section_edits, :class_name => "AdminUser"
	belongs_to :pages
	scope :sorted, lambda {order("sections.position ASC")}
end
