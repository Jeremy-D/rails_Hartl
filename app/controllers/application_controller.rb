class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	def hello
		render html: "hello, cruel world! \n \n Section 3.4"
	end 
end
