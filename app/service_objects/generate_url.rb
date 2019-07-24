# frozen_string_literal: true

class GenerateUrl
  def initialize; end

  def perform
    @gen_url = generate_short_url
    base_url = MyRedis.instance.get(@gen_url)
    if !base_url.nil?
      perform
    else
      @gen_url
    end
  end

  private

  def generate_short_url
    [*('a'..'z'), *('0'..'9'), *('A'..'Z')].sample(6).join
  end
end
