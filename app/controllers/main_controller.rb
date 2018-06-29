class MainController < ApplicationController
	def crearTabla
		email = params[:username]
		user = Subject.find_by_sql(["SELECT subjects.name,subjects.nrc FROM `users` INNER JOIN user_subjects ON users.id = user_subjects.id_user 
			INNER JOIN subjects ON user_subjects.nrc = subjects.nrc WHERE users.username = ? ",email])
		if user
			render json:{status:'SUCCESS', message:'Tabla Obtenida',data:user}, status: :ok
		else
			render json:{status:'ERROR', message:'No se pudo obtener la tabla',data:user}, status: :error
		end
	end
end
