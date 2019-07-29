require 'spec_helper'
require 'rails_helper'

describe GetUrl do
  PARAM = 'UcjrC3'
  let(:getter) { GetUrl.new(PARAM) }
  it "should get right url from RedisBase" do
    expect(getter).to receive(:perform).with('localhost:3000')
  end
end
