require 'spec_helper'
require 'rails_helper'

describe ValidUrl do

  it "this url can be invalid value " do
    validator = ValidUrl.new('htt:/|gole.ru')
    expect(validator.invalid?).to eq(true)
  end

  it "this url can be valid value " do
    validator = ValidUrl.new('http://google.com')
    expect(validator.invalid?).to eq(false)
  end


end