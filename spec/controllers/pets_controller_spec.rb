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

    describe "GET new" do
      it "has a 200 status code" do
        get :new
        expect(response.status).to eq(200)
      end
      it "renders the 'new' template" do
        get :new
        expect(response).to render_template("new")
      end
    end

    describe "POST create" do
      it "Redirect Success" do
        post :create, params: { pet: { name: 'zeze', birth_date: DateTime.now, breed: 'pincher', kind: 'dog' } }
        expect(response).to redirect_to(pets_path)
      end
      it "Render :new on failure" do
        post :create, params: { pet: { name: '', birth_date: DateTime.now, breed: 'pincher', kind: 'dog' } }
        expect(response).to render_template("new")
      end
    end
  end
end
