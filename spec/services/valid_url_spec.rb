require 'spec_helper'
require 'rails_helper'

describe ValidUrl do
  INVALID = 'htt:/|gole.ru'
  VALID = 'http://google.com'
  let(:invalid) { ValidUrl.new(INVALID) }
  let(:valid) {ValidUrl.new(VALID)}

  it "this url can be invalid value " do
    expect(invalid.invalid?).to eq(true)
  end

  it "this url can be valid value " do
    expect(valid.invalid?).to eq(false)
  end
end
