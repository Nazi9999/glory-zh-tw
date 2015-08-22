require 'spec_helper'

describe Admin::ArtistsController, type: :controller do
  before do
    login_user
  end
  
  context '#index' do
    it 'returns 200 when everthing is fine' do
      get :index
      expect(response.status).to eq 200
    end
  end
end
