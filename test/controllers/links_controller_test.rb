# frozen_string_literal: true

require 'test_helper'
require 'valid_url.rb'
require 'generate_url.rb'
class LinksControllerTest < ActionController::TestCase
  test 'redirect to root_path when url valid' do
    assert_redirected_to MyRedis.instance.get('')
  end
end
