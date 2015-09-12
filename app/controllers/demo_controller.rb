class DemoController < ApplicationController
	
	layout false

	def index
		

	end

	def hello
		#render('index')
		@array = [1,2,3,4,5]
		@id = params['id']
		@page = params[:page]
	end

	def other_hello
		redirect_to(:controller => 'demo', :action => 'index')
	end

	def demo_text
		render(:text => "This is text rendered through an action")
	end

end
