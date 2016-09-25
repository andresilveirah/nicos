require 'rails_helper'

RSpec.describe Api::V1::WebsitesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/api/v1/websites').to route_to('api/v1/websites#index', format: 'json')
    end

    it 'routes to #create' do
      expect(post: 'api/v1/websites').to route_to('api/v1/websites#create', format: 'json')
    end
  end
end
