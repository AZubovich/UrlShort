require 'spec_helper'
require 'rails_helper'

describe GetUrl do
  it "should get right url from RedisBase" do
    getter = GetUrl.new('UcjrC3')
    expect(getter.perform('localhost:3000')[0]).to eq('https://www.railscarma.com')
  end
end