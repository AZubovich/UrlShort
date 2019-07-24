	class MyRedis
		def self.instance
			@instance ||= Redis::Namespace.new('Url_short', :redis => Redis.new)
		end
	end
# $redis = Redis::Namespace.new('Url_short', :redis => Redis.new)