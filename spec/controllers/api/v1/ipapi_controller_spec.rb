require 'rails_helper'

RSpec.describe Api::V1::RecipesController, type: :controller do
  xit 'can view data' do
    let(:recipe){ create(:recipe1) }

    get 'index', {:my_params => '1234', :format => :json}
    expect(response).to have_http_status(:success)
  end
end
