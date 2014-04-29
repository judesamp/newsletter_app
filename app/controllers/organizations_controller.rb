class OrganizationsController < ApplicationController

	def index
		@all_organizations = Organization.all
	end

	def new 
		@new_organization = Organization.new
	end

	def create
		@new_organization = Organization.new(new_org_params)
		if @new_organization.save
			redirect_to organizations_path
		else
			redirect_to new_organization_path
		end
	end

	def show
		@organization = Organization.find(params[:id])
	end

	def edit
		@organization = Organization.find(params[:id])
	end

	def update
		@organization = Organization.find(params[:id])
		if @organization.update_attributes(new_org_params)
			redirect_to organizations_path
		end
	end

	def destroy
		@organization = Organization.find(params[:id])
		if @organization.delete
			redirect_to organizations_path
		end
	end

	private

	def new_org_params
		params.require(:organization).permit(:name, :street_adress, :city, :state, :zip, :email, :newsletter_title, :status)
	end

end
