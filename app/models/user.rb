class User < ApplicationRecord
	belongs_to :rol

	def index
		render :json => @users.as_json()
	end

	def full_name
		"#{name} #{lastname}"
		
	end
	
	def as_json(options={})
		super(:only => [:RUT,:username,:id],
			:methods => [:full_name],
			:include => {
				:rol => {:only => [:tipo]}
			}
    	)
	end
end
