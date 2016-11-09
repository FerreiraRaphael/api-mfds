class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]
  before_action :validate_resource, only: [:show, :edit, :update, :destroy]

  def index
    render json: @resources = Resource.all
  end

  def show
    render json: json_response(@resource)
  end

  def create
    @resource = Resource.new(resource_params)
    @resource.save
    render json: json_response(@resource)
  end

  def update
    @resource.update(resource_params)
    render json: json_response(@resource)
  end

  def destroy
    @resource.destroy
    render json: json_response(@resource)
  end

  private

  def set_resource
    @resource = Resource.find_by(id: params[:id])
  end

  def resource_permited_params
    params.permit(:name, :message)
  end

  def resource_params
    {
      name: resource_permited_params[:name],
      message: 'METODO E FERRAMENTAS DE DESENVOLVIMENTO DE SOFTWARE é show!'
    }
  end

  def validate_resource
    render json: resource_dont_exist if @resource.nil?
  end
end
