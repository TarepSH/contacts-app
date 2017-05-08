class IndexController < ApplicationController
	def home
		if user_signed_in?
			redirect_to user_contacts_url(current_user) 
		else
			render :landaing_page
		end

	end

	def landaing_page 
	end



end
