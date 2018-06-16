class SignupController < ApplicationController
	def getUsuario
		nombre = params[:name]
		apellido = params[:lastname]
		rut = params[:RUT]
		email = params[:username]
		contraseña = params[:pass]
		tipo = params[:tipo]
		usuario = User.new(:name => nombre, :lastname => apellido, :RUT => rut, :username => email, :password => contraseña, :tipo => tipo)
		usuario.save
		render json:{status:'SUCCESS', message:'Persona guardada',data:usuario}, status: :ok
	end
end
