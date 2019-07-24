# frozen_string_literal: true

class GetUrl
  def initialize(param)
    @param = param
  end

  def perform(host)
    [old_url, get_short_url(host)]
  end

  private

  def old_url
    MyRedis.instance.get(@param)
  end

  def get_short_url(host)
    'http://' + host + '/' + @param
  end
end
