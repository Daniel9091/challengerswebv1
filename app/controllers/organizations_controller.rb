class OrganizationsController < ApplicationController
  # GET /organizations
  def index
    @organizations = Organization.all
  end

  # GET /organizations/:id
  def show
    @organization = Organization.find(params[:id])
  end
end
