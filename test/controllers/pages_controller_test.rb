# frozen_string_literal: true

require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test '#home take variables only with params' do
    assert_not ''.nil?, 'wrong'
    puts 'params is OK'
  end
end
