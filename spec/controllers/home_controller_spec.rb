require 'rails_helper'

RSpec.describe Refinerycms::Markdown::HomeController, :type => :controller do
  routes { Refinerycms::Markdown::Engine.routes }
  it "has a 200 status code" do
    get :index
    expect(response.status).to eq(200)
    expect(response).to render_template(:index)
  end
end
