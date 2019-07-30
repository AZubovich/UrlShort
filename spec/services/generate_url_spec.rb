require 'spec_helper'
require 'rails_helper'

describe GenerateUrl do
  let(:generator) { GenerateUrl.new }
  it "generate short url with 6 symbols" do
  	expect(generator.perform.length).to eq(6)
    expect(generator).to receive(:perform)
  end
end
