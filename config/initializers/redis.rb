class RedisBase
  def self.instance
    @instance ||= Redis::Namespace.new('Url_short', :redis => Redis.new)
  end
end
