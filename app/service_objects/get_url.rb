class GetUrl
  def initialize(param)
    @param = param
  end

  def old_url
    resource = $redis.get(@param)
    resource
  end

  def get_short_url(host)
    'http://' + host + '/' + @param
  end
end
