class OmniauthController <ApplicationController

	def facebook
		#logger.info request.env["omniauth.auth"].info.image
		session[:image] = request.env["omniauth.auth"].info.image
		session[:name] = request.env["omniauth.auth"].info.name
		redirect_to books_path

	end
end
