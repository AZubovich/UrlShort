require 'spec_helper'
require 'rails_helper'

RSpec.describe PagesController, :type => :controller do
  render_views
  describe "GET home" do
    it "should render home page" do
      get :home
      expect(response.body).not_to match /<h2>.*widgets/im
    end
  end
end