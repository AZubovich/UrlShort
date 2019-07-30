class GenerateUrl
  def perform
    gen_url = generate_short_url
    base_url = RedisBase.instance.get(gen_url)
    unless base_url.nil?
      perform
    else
      gen_url
    end
  end

  private

  def generate_short_url
    [*('a'..'z'), *('0'..'9'), *('A'..'Z')].sample(6).join
  end
end
