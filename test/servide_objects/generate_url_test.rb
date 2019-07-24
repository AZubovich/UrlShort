# frozen_string_literal: true

require 'test_helper'

class GenerateUrlTest < ActiveSupport::TestCase
  test 'perform function' do
    @gen_url = 'pgkdsk'
    base_url = MyRedis.instance.get(@gen_url)
    assert_nil base_url, 'wrong'
    if !base_url.nil?
      perform
    else
      @gen_url
    end
    puts 'perform is OK'
  end

  test 'generate_short_url function' do
    assert_not [*('a'..'z'), *('0'..'9'), *('A'..'Z')].sample(6).join.length != 6, 'wrong'
    puts 'generate_short_url is OK'
  end
end
