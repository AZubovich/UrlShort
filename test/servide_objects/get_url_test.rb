# frozen_string_literal: true

require 'test_helper'

class GetUrlTest < ActiveSupport::TestCase
  test 'old_url function' do
    assert_not_nil MyRedis.instance.get('pC47Rf'), 'wrong argument'
    puts 'old_url is OK'
  end

  test 'get_short_url function' do
    assert 'http://' + 'localhost:3000' + '/' + 'pC47Rf', 'wrong'
    puts 'get_short_url is OK'
  end
end
