require "rails_helper"

RSpec.describe PetsController, type: :controller do
  context 'As guest user' do
    describe "GET index" do
      it "has a 200 status code" do
        get :index
        expect(response.status).to eq(200)
      end
      it "renders the 'index' template" do
        get :index
        expect(response).to render_template("index")
      end
    end
  end
end
