class LoginController < ApplicationController
	def loginUsuario
		email = params[:username]
		pass = params[:password]
		user = User.where(username: email).take!
		if user.password == pass
			render json:{status:'SUCCESS', message:'Persona guardada',data:user}, status: :ok
		else
			render json:{status:'ERROR', message:'los datos no corresponden',data:user}, status: :error
		end
	end
end
