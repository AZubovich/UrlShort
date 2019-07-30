require 'spec_helper'
require 'rails_helper'


RSpec.describe LinksController do
  describe "GET redirect" do
    it "redirect to resource" do
      get :redirect
      expect(response).to redirect_to('https://getbootstrap.com')
    end
  end

  describe "POST create" do
  	it "redirect to home page" do
  		get :create
  		expect(response).to redirect_to(root_path)
  	end
  end
end
