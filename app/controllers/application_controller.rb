class ApplicationController < ActionController::Base
  def resource_dont_exist
    {
      objeto: [],
      messagem: 'nao existe'
    }
  end

  def resource_exist(resource)
    objeto = resource.errors.empty? ? resource : resource.errors
    { objeto: objeto, messagem: 'sucesso' }
  end

  def json_response(resource)
    resource.nil? ? resource_dont_exist : resource_exist(resource)
  end
end
