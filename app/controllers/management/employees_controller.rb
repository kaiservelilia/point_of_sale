module Management
	class EmployeesController < ApplicationController
		def index
			@employees= Employee.all
		end

		def new
			@employee = Employee.new
		end

		def create
			@employee = Employee.new(employee_params)
			if @employee.save
				redirect_to management_employees_path
			else
				render "new"
			end
		end

		def show
			@employee = Employee.find(params[:id])
		end

		def edit
			@employee = Employee.find(params[:id])
		end

		def update
			@employee = Employee.find(params[:id])
			if @employee.update_attributes(employee_params)
				redirect_to management_employees_path
			else
				render "edit"
			end
		end

		def destroy
			@employee = Employee.find(params[:id])
			@employee.destroy
			redirect_to management_employees_path
		end

		def employee_params
			params.require(:employee).permit!
		end


	end
end