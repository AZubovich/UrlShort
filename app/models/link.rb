class Link < ApplicationRecord
  validates :url, url: true
  before_create :generate_short_url
  def generate_short_url
    gen_url = [*('a'..'z'), *('0'..'9'), *('A'..'Z')].sample(6).join
    old_url = $redis.get(gen_url)
    if !old_url.nil?
      self.generate_short_url
    else
      self.short_url = gen_url
    end
  end
end
