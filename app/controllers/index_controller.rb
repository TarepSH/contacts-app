class IndexController < ApplicationController
	def home
		if user_signed_in?
		else
			render :landaing_page
		end

	end

	def landaing_page 
	end



end
