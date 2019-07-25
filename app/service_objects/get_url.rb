class GetUrl
  def initialize(param)
    @param = param
  end

  def perform(host)
    [old_url, get_short_url(host)]
  end

  private

  attr_accessor :param

  def old_url
    RedisBase.instance.get(param)
  end

  def get_short_url(host)
    'http://' + host + '/' + param
  end
end
