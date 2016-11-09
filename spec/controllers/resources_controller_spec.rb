require 'rails_helper'

RSpec.describe ResourcesController, type: :controller do
  let(:valid_attributes) do
    {
      name: Faker::Internet.name,
      message: 'MDFS é show'
    }
  end
  describe 'GET index' do
    it 'assigns all resources as @resources' do
      resource = Resource.create! valid_attributes
      get :index, params: {}
      expect(assigns(:resources)).to eq([resource])
    end
  end

  describe 'GET show' do
    it 'assigns the requested resource as @resource' do
      resource = Resource.create! valid_attributes
      get :show, params: { id: resource.to_param }
      expect(assigns(:resource)).to eq(resource)
    end
  end

  describe 'POST create' do
    it 'creates a new Resource' do
      expect do
        post :create, params: valid_attributes
      end.to change(Resource, :count).by(1)
    end
  end

  describe 'PUT update' do
    it 'updates the Resource' do
      resource = Resource.create! valid_attributes
      update_attributes = { id: resource.to_param,
                            name: Faker::Internet.name }
      put :update, params: update_attributes
      expect(assigns(:resource).name).to eq(update_attributes[:name])
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested resource' do
      resource = Resource.create! valid_attributes
      expect do
        delete :destroy, params: { id: resource.to_param }
      end.to change(Resource, :count).by(-1)
    end
  end

  describe 'MINHA MENSAGEM FAVORITA' do
    it 'TEM QUE ESTAR CERTA MANO !!!' do
      post :create, params: { name: Faker::Internet.name }
      expect(assigns(:resource).message).to be_eql('MDFS é show')
    end
  end
end
