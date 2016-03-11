class CompaniesController < ApplicationController

	def index
 		@companies = Company.all
 	end

 	def new
		@company = Company.new 
	end

	def create
		@company = Company.new(company_params)
		if @company.save
			redirect_to companies_path
		else
			render "new"
		end
	end

	def show
		@companies = Company.all
		@company = Company.find(params[:id])
	end

	def edit
		@company = Company.find(params[:id])
		# if (@companyprofile.user_id != admin.id) 
		# 	redirect_to root_path
		#  end
		# para sa admin lang gumagana	
	end

	def update
		@company = Company.find(params[:id])
		if @company.update_attributes(company_params)
			redirect_to company_path(@company)
		else render "edit"
		end
	end

	# def destroy
	# 	@companyprofile = Companyprofile.find(params[:id])
	# 	@pcompanyprofile.destroy
	# 	redirect_to companyprofiles_path
	# end

	def company_params
		params.require(:company).permit!
	end
end
