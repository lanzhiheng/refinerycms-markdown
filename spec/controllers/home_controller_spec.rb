require 'rails_helper'

RSpec.describe Refinery::Markdown::HomeController, :type => :controller do
  routes { Refinery::Core::Engine.routes }
  it "has a 200 status code" do
    get :index
    expect(response.status).to eq(200)
    expect(response).to render_template(:index)
  end
end
