class CompanyprofilesController < ApplicationController

	def index
 		@companyprofiles = Companyprofiles.all
 	end

 	def new
		@Companyprofile = Companyprofile.new 
	end

	def create
		@companyprofile = Companyprofile.new(companyprofile_params)
		if @companyprofile.save
			redirect_to companyprofiles_path
		else
			render "new"
		end
	end

	def show
		@companyprofile = Companyprofile.find(params[:id])
	end

	def edit
		@companyprofile = Companyprofile.find(params[:id])
		# if (@companyprofile.user_id != admin.id) 
		# 	redirect_to root_path
		#  end
		# para sa admin lang gumagana	
	end

	def update
		@companyprofile = Companyprofile.find(params[:id])
		if @companyprofile.update_attributes(companyprofile_params)
			redirect_to companyprofile_path(@companyprofile)
		else render "edit"
		end
	end

	# def destroy
	# 	@companyprofile = Companyprofile.find(params[:id])
	# 	@pcompanyprofile.destroy
	# 	redirect_to companyprofiles_path
	# end

	def companyprofile_params
		params.require(:companyprofile).permit!
	end
end
