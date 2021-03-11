module SetSource
	extend ActiveSupport::Concern

	def set_source
		session[:source] = params[:q] if params[:q]
	end
end



	