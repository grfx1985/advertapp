module AdvertsHelper
	def is_my_advert?(advert)
		if current_admin && advert.admin_id == current_admin.id 
			return true
		else
			return false
		end	
	end
end
