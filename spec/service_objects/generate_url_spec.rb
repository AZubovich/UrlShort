require 'spec_helper'
require 'rails_helper'

describe GenerateUrl do
  it "generate short url with 6 symbols" do
    generator = GenerateUrl.new
    expect(generator.perform.length).to eq(6)
  end
end