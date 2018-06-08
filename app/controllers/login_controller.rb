class LoginController < ApplicationController
	def getUsuario
		nombre = params[:username]
		contraseña = params[:pass]
		tipo = params[:tipo]
		usuario = User.new(:username => nombre, :password => contraseña, :tipo => tipo)
		usuario.save
		render json:{status:'SUCCESS', message:'Persona guardada',data:usuario}, status: :ok 
	end
end