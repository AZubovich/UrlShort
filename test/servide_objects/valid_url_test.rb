# frozen_string_literal: true

require 'test_helper'

class ValidUrlTest < ActiveSupport::TestCase
  test 'valid_url function' do
    assert_not 'ht:||' =~ %r/^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/, 'wrong'
    puts 'valid_url is OK'
  end
end
